PRACTICAL 
1. Write a practical in Core PHP or any PHP Framework to print bank statement entries  from database, in which 
a. There will be opening balance on selected start date 
b. There will be some credit/debit transaction between selected dates 
c. There will be closing balance at end of all transactions 
d. You have to provide option to select date range between which you wants  transactions 
2. Provide seeders for transactions table where you can simulate following

Please follow the given below step to run the project  
======================================
Prerequisite for run the program :

- PHP >= 7.2.5
- BCMath PHP Extension
- Ctype PHP Extension
- Fileinfo PHP extension
- JSON PHP Extension
- Mbstring PHP Extension
- OpenSSL PHP Extension
- PDO PHP Extension
- Tokenizer PHP Extension
- XML PHP Extension

STEP 1 : (clone the repo)
STEP 2 : composer install OR composer update
STEP 3 : create new database and setup it into .env file
STEP 4 : run following command in your terminal to run migrations 
          => php artisan migrate
STEP 5 : run following command to genrate dummy data using seeder 
          => php artisan db:seed --class=BankTransectionsSeeder
STEP 6 : run project directly using localhost
Steps 
=========================

- STEP 1 : composer install OR composer update
- STEP 2 : create new database and setup it into .env file
- STEP 3 : run following command in your terminal to run migrations 
          => php artisan migrate
- STEP 4 : run following command to genrate dummy data using seeder 
          => php artisan db:seed --class=BankTransectionsSeeder
- STEP 5 : run project directly using localhost

About Project(Developer Note) 
============================

Opening Balance : Balance till to the selected start date. 
Closing Balance : Balance till to the selected end date.
bank_account_id : Dummy as we need to show the statement of logged in customer only.
Add Database file for your reference (path : public/bank.sql) 

Practical Done By :
Milan Pathak
+91-8000644182
milanpathak912@gmail.com
