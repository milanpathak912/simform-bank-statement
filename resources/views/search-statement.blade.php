<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Bank Statement</title>
  @include('head')
</head>
<body>
  <div class="container-fluid">
    <div class="row p-3">
      <div class="col-md-4">
        <div id="reportrange" style="background: #fff; cursor: pointer; padding: 5px 10px; border: 1px solid #ccc;">
          <i class="fa fa-calendar"></i>&nbsp;
          <span></span> <i class="fa fa-caret-down"></i>
        </div>
      </div>
      <div class="col-md-4" id="openingDiv">
        Opening Balance on dd-mm-yyyy : 0.00
      </div>
      <div class="col-md-4" id="closingDiv">
        Closing Balance on dd-mm-yyyy : 0.00
      </div>
      <div class="col-md-12 mt-3">
        <div class="table">
          <input type="hidden" name="_token" id="token" value="{{ csrf_token() }}">
          <table id="Tdatatable" class="display nowrap table table-hover table-striped table-bordered" style="width:100%">
            <thead>
              <tr class="text-center">
                <th>Date</th>
                <th>Description</th>
                <th>Credit</th>
                <th>Debit</th>
                <th>Running Balance</th>
              </tr>
            </thead>
            
          </table>
          
        </div>
      </div>
    </div>
  </div>
  @include('script')
</body>
</html>