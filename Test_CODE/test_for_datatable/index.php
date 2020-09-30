<?php 
 
$connect = mysqli_connect("localhost", "root", "", "dbtesting1");
$query = "SELECT * FROM category ORDER BY category_name ASC";
$result = mysqli_query($connect, $query);
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">


<title>Datatables Individual column searching using PHP Ajax Jquery</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js"></script>  
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
 <div class="container">
   <h1 align="center">Datatables Individual column searching using PHP Ajax Jquery</h1>
   <br>

   <div class="table-responsive">
    <div id="product_data_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer"><div class="row">
      <div class="col-sm-6">
        <div class="dataTables_length" id="product_data_length">
          <label>Show <select name="product_data_length" aria-controls="product_data" class="form-control input-sm"><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> entries</label>
        </div></div>
        <div class="col-sm-6">
          <div id="product_data_filter" class="dataTables_filter"><label>Search:<input type="search" class="form-control input-sm" placeholder="" aria-controls="product_data"></label></div>
        </div>
        </div>
        <div class="row"><div class="col-sm-12"><table id="product_data" class="table table-bordered table-striped dataTable no-footer" role="grid" aria-describedby="product_data_info">
     <thead>
      <tr role="row"><th class="sorting" tabindex="0" aria-controls="product_data" rowspan="1" colspan="1" style="width: 133px;">Sr. No.</th><th class="sorting" tabindex="0" aria-controls="product_data" rowspan="1" colspan="1" style="width: 232px;">Product Name</th><th class="sorting_disabled" rowspan="1" colspan="1" style="width: 416px;">
        <select name="category" id="category" class="form-control">
         <option value="">Category Search</option>
         <?php 
         while($row = mysqli_fetch_array($result))
         {
          echo '<option value="'.$row["category_id"].'"'.$row["category_name"].'';
          }
          ?>
        </select>
      </th><th class="sorting" tabindex="0" aria-controls="product_data" rowspan="1" colspan="1" style="width: 224px;">Product Price</th></tr>
    </thead>
    <tbody></tbody></table><div id="product_data_processing" class="dataTables_processing panel panel-default" style="display: none;">Processing...</div></div></div><div class="row"><div class="col-sm-5"><div class="dataTables_info" id="product_data_info" role="status" aria-live="polite"></div></div><div class="col-sm-7"><div class="dataTables_paginate paging_simple_numbers" id="product_data_paginate"></div></div></div></div>
  </div>
</div>





<script type="text/javascript" language="javascript">
  $(document).ready(function(){

   load_data();

   function load_data(is_category)
   {
    var dataTable = $('#product_data').DataTable({
     "processing":true,
     "serverSide":true,
     "order":[],
     "ajax":{
      url:"fetch.php",
      type:"POST",
      data:{is_category:is_category}
    },
    "columnDefs":[
    {
     "targets":[2],
     "orderable":false,
   },
   ],
 });
  }

  $(document).on('change', '#category', function(){
    var category = $(this).val();
    $('#product_data').DataTable().destroy();
    if(category != '')
    {
     load_data(category);
   }
   else
   {
     load_data();
   }
 });
});
</script>
</body>
</html>