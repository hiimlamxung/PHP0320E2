<?php 
  include_once"../Controller/Product_c.php";
  $product=new Product_c();
  if(isset($_POST['id'])){
    $id=$_POST['id'];
    $rs=$product->getDescription_ID($id);
    foreach ($rs as $key => $value) {
      ?>
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Mô tả sản phẩm</h4>
        </div>
        <div class="modal-body">
          <p><?php echo $value['description']; ?></p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    <?php

    }
  }
 ?>
 