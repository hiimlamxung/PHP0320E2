<form action="" method="POST" role="form">
	<legend>Form title</legend>
<?php 
	foreach ($info_member as $key => $value) {
?>
<div class="col-md-6">
	<div class="form-group">
		<label for="">Username</label>
		<input type="text" class="form-control" id="" value="<?php echo $value['username'];  ?>" name="user_edit">
	</div>

	<div class="form-group">
		<label for="">Password</label>
		<input type="text" class="form-control" id="" value="<?php echo $value['password'];  ?>" name="pass_edit">
	</div>

	<div class="form-group">
		<label for="">Email</label>
		<input type="text" class="form-control" id="" value="<?php echo $value['email'];  ?>" name="email_edit">
	</div>

	<div class="form-group">
		<label for="">Hobby</label>
		<input type="text" class="form-control" id="" value="<?php echo $value['hobby'];  ?>" name="hobby_edit">
	</div>
	</div>
	<div class="col-md-6">
		<label for="">Description</label><br>
		<textarea name="description_edit" id="" cols="70" rows="15"></textarea>
	</div>

<?php
	}
 ?>

	

	<button type="submit" class="btn btn-primary" name="submit_edit">Update</button>
</form>