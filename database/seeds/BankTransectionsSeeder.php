<?php

use Illuminate\Database\Seeder;
use App\BankTransection;

// use Str;
// use DB;

class BankTransectionsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for($i = 1;$i<90;$i++){
            $date = \Carbon\Carbon::createFromFormat('Y-m-d h:i:s','2022-01-01 01:00:00');
            $newDate = $date;
            $newDate = $newDate->addDays($i);
            $bank_transections = BankTransection::create(
                ['bank_account_id' => '1', 'description' => Str::random(50),  'amount' => mt_rand(10,1000),'status' => Arr::random(["c","d"]), 'created_at' => $newDate,'updated_at'=>$newDate]
            );   
        }
    }
}
