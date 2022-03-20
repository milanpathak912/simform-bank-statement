<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\BankTransection;
use Response;
use DateTime;
use DatePeriod;
use DateInterval;


class BankTransectionsController extends Controller
{
    
    //Get list of json data of bank transections for Datatable 
    public function list(Request $request)
    {
        $req = $request->all();
        $start = $req['start'];
        $length = $req['length'];
        $search = $req['search']['value'];
        $order = $req['order'][0]['dir'];
        $column = $req['order'][0]['column'];
        $orderby = ['id','amount','created_at'];
        $total = BankTransection::selectRaw('count(*) as total')->whereNull('bank_transections.deleted_at')->first();
        
        $query = BankTransection::select('bank_transections.*')
        ->where('bank_account_id',1)
        ->whereNull('bank_transections.deleted_at');
        
        $filteredq = BankTransection::where('bank_account_id',1)
        ->whereNull('bank_transections.deleted_at');
        $totalfiltered = $total->total;
        $bankAccountId = $request->bankAccountId;
         
        if (!empty($request->startDate) && !empty($request->endDate)) {
            $startDate = date($request->startDate);
            $endDate = date($request->endDate);
            $query = $query->whereDate('bank_transections.created_at',">=",$startDate)->whereDate('bank_transections.created_at',"<=",$endDate);
            $filteredq = $filteredq->whereDate('bank_transections.created_at',">=",$startDate)->whereDate('bank_transections.created_at',"<=",$endDate);
            $recordCount = $filteredq->selectRaw('count(*) as total')->first();
            $totalfiltered = $recordCount->total;
        }
        $query = $query->orderBy($orderby[$column], $order)->offset($start)->limit($length)->get();
        $data = [];
        $getOpening = 0;
        foreach ($query as $key => $value)
        {
            $credit = 0;
            $debit = 0;
            $balance = $value->available_balance;
            
            if($value->status == 'c'){
                $credit = $value->amount;
            }else{
                $debit = $value->amount;
            }
            $data[] = [getFormatedDate($value->created_at), $value->description, getFormatedAmount(floatval($credit),2),getFormatedAmount(floatval($debit),2) , getFormatedAmount(floatval($balance),2),$getOpening];
        }
        $json_data = array(
            "draw" => intval($_REQUEST['draw']),
            "recordsTotal" => intval($total->total),
            "recordsFiltered" => intval($totalfiltered),
            "data" => $data,
        );
        return Response::json($json_data);
        
    }
    
    
    //Redirect to index view page
    public function index()
    {
        $data = BankTransection::get();
        return view('search-statement',compact('data'));
    }
    
    //Get opening and closing balance
    public function getBalance(Request $request)
    {   
        $bankAccountId = $request->bankAccountId;
        $startDate = $request->fromDate;
        $endDate =   $request->toDate;
        // $startDate = "2022-02-01";
        // $endDate =   "2022-02-28";
        
        $balance = BankTransection::getOpeningBalance($bankAccountId,$startDate,$endDate);
        return $balance;
    }
    
}
