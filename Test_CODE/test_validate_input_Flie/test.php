<!DOCTYPE html>
<html>
<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</head>
<body>
	<form action="" enctype="multipart/form-data">
		<span id="file_error"></span>
		<input id="filePHOTO" multiple="" type="file" name="file_upload1[]" class="file_upload1">
	</form>





	<script>
		$(document).ready(function(){
			$("#filePHOTO").change(function(){
				$("#file_error").html("");
				var count=$("#filePHOTO")[0].files.length;
				var memory=0;
				for (var i = 0; i <count; i++) {
					var file_size = $('#filePHOTO')[0].files[i].size;
					memory +=file_size;
					if(file_size>500000) {
					$("#file_error").html("<p style='color:#FF0000'>Mỗi ảnh phải có kích thước nhỏ hơn 500kb </p>");
					return false;
					} 
				}
				if(memory>5000000){
					$("#file_error").html("<p style='color:#FF0000'>Tổng kích thước tất cả ảnh phải nhỏ hơn 5Mb </p>");
					return false;
				}

				for (var i = 0; i <count; i++) {
					var file_type = $('#filePHOTO')[0].files[i].type;
					if(file_type=='image/jpeg' || file_type=='image/webp' || file_type=='image/png'){
						$("#file_error").html("");
					}else{
						$("#file_error").html("<p style='color:#FF0000'>Lỗi,định dạng ảnh không phải là JPEG, PNG, Webp </p>");
						return false;
					}
				}
				return true;





				// var file_size = $('#filePHOTO')[0].files[0].size;
				// if(file_size>300000) {
				// 	$("#file_error").html("<p style='color:#FF0000'>File size is greater than 300kb</p>");
				// 	$(".file_upload1").css("border-color","#FF0000");
				// 	return false;
				// } 
				// return true;
			});
		});
	</script>
</body>
</html>