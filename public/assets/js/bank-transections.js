$(document).ready(function(){
  var startDate = $('#reportrange').data('daterangepicker');
  // console.log(startDate);
  // var endDate = $('#reportrange').data('daterangepicker').endDate;
  // DatatableInitiate(startDate,endDate);
});

function DatatableInitiate(startDate='',endDate='') {
  var token = $('input[name="_token"]').val();
  table = $('#Tdatatable').DataTable(
    {
      searching: false,
      "bDestroy": true,
      "processing": true,
      "serverSide": true,
      "createdRow": function( row, data, dataIndex ) {
        $(row).addClass( data[0] );
      },
      "columnDefs": [
        {
          targets: [0],
          className: "opacity1 text-center",
          orderable: false
        },
        {
          targets: [1],
          className: "text-left",
          orderable: false
        },
        {
          targets: [2,3,4],
          className: "text-center",
          orderable: false
        },
        {
          targets: [1],
          className: "text-center", orderable: false, searchable: false
        }
      ],
      "scrollX": true,
      "ajax": {
        url: "list", // json datasource
        method: 'post',
        data:{
          _token : token,
          bankAccountId:1,
          startDate:startDate,
          endDate:endDate,
        },
        error: function () {  // error handling
          $(".Tdatatable-error").html("");
          $("#Tdatatable").append('<tbody class="Tdatatable-error"><tr><th colspan="3">No data found in the server</th></tr></tbody>');
          $("#Tdatatable_processing").css("display", "none");
        }
      },
    }
    );
  }
  function GetBalance(_fromDate='',_toDate='')
  {
    $.ajax({
      url: "get-balance",
      dataType:"json",
      method: 'get',
      data: {
        bankAccountId:1,
        fromDate: _fromDate,
        toDate: _toDate,
      },
      success: function(response) {
        // console.log(response);
        if(response["OpeningBalance"] !== ""){
          $('#openingDiv').html("<b>Opening Balance</b> on "+moment(_fromDate).format('DD-MM-YYYY')+" : <b>"+response['OpeningBalance']+"</b>");
        }
        if(response['ClosingBalance'] !== ""){
          $('#closingDiv').html("<b>Closing Balance</b> on "+moment(_toDate).format('DD-MM-YYYY')+" : <b>"+response['ClosingBalance']+"</b>");
        }
      },
      error: function (errorResponse) { 
        alert(errorResponse);
      }
    });
  }