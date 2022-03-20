<?php

use Illuminate\Database\Seeder;
use App\BankTransection;

// use Str;
// use DB;
use Illuminate\Support\Facades\Log;

class BankTransectionsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for($i = 1;$i<=80;$i++){
            $date = \Carbon\Carbon::createFromFormat('Y-m-d h:i:s','2022-01-01 01:00:00');
            $newDate = $date;
            $newDate = $newDate->addDays($i);
            $amount = mt_rand(10,1000);
            $status = Arr::random(["c","d"]);
            
            # get the  last record available_balance
            $getBalance = BankTransection::orderBy('id','DESC')->first();
            $available_balance = 0.00;
            if($getBalance && isset($getBalance->available_balance)){
                $available_balance = $getBalance->available_balance;
                if($status == "c"){
                    $available_balance = $available_balance + $amount;
                }elseif($status == "d"){
                    $available_balance = $available_balance - $amount;
                }
            }else{
                if($status == "c"){
                    $available_balance = $available_balance + $amount;
                }elseif($status == "d"){
                    $available_balance = $available_balance - $amount;
                }
                
            }
            Log::info([$i,$status,$amount,$available_balance]);
            if($available_balance >= 0){
                $bank_transections = BankTransection::create(
                    ['bank_account_id' => '1', 'description' => Str::random(50),  'amount' => $amount,'available_balance' => $available_balance ,'status' => $status, 'created_at' => $newDate,'updated_at'=>$newDate]
                );   
            }
            // Log::info(['bank_account_id' => '1', 'description' => Str::random(50),  'amount' => $amount,'available_balance' => $available_balance ,'status' => $status, 'created_at' => $newDate,'updated_at'=>$newDate]);
        }
    }
}
