<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DateTime;
use DatePeriod;
use DateInterval;

class BankTransection extends Model
{
    protected $fillable = [
        'bank_account_id', 'description', 'amount','status'
    ];
    
    public static function getOpeningBalance($bankAccountId,$startDate,$endDate)
    {
        $endDate = new DateTime($endDate);
        $endDate->add(new DateInterval('P1D'));
        
        $getOpeningBalance = BankTransection::where('bank_account_id',$bankAccountId)
        ->where('created_at','<=',$startDate)
        ->select(\DB::raw('sum(amount) as sum_as_status, status'))
        ->groupBy('status')
        ->get();
        
        
        $openingBalance = 0.00;
        $getOpeningBalance_C = 0.00;
        $getOpeningBalance_D = 0.00;
        
        //Get Opening Balance
        if($getOpeningBalance->count() == 2){
            foreach($getOpeningBalance as $record){
                if($record->status == "c"){
                    $getOpeningBalance_C = $record->sum_as_status;
                }elseif($record->status == "d"){
                    $getOpeningBalance_D = $record->sum_as_status;
                }
            }
            $openingBalance = ($getOpeningBalance_C - $getOpeningBalance_D);
        }
        //Get Closing Balance
        $getClosingBalance = BankTransection::where('bank_account_id',$bankAccountId)
        ->where('created_at','<=',$endDate)
        ->select(\DB::raw('sum(amount) as sum_as_status, status'))
        ->groupBy('status')
        ->get();
        $closingBalance = 0.00;
        $getClosingBalance_C = 0.00;
        $getClosingBalance_D = 0.00;
        
        if($getClosingBalance->count() == 2){
            foreach($getClosingBalance as $record){
                if($record->status == "c"){
                    $getClosingBalance_C = $record->sum_as_status;
                }elseif($record->status == "d"){
                    $getClosingBalance_D = $record->sum_as_status;
                }
            }
            
            $closingBalance = ($getClosingBalance_C - $getClosingBalance_D);
        }    
        $return_data = [
            'OpeningCredit' => getFormatedAmount(floatval($getOpeningBalance_C),2),
            'OpeningDebit' => getFormatedAmount(floatval($getOpeningBalance_D),2),
            'OpeningBalance' => getFormatedAmount(floatval($openingBalance),2),
            'ClosingCredit' => getFormatedAmount(floatval($getClosingBalance_C),2),
            'ClosingDebit' => getFormatedAmount(floatval($getClosingBalance_D),2),
            'ClosingBalance' => getFormatedAmount(floatval($closingBalance),2)
        ];        
        return $return_data;
    }
    
}


