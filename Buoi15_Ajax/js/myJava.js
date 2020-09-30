$(document).ready(function(){
	// Phuong thuc load cua Ajax
	$(".show").load('data.php');

	$.get('data.php',{name:'Tung TK',age: 25 },function(datas){ //datas là tên tham số tự đặt tùy ý,
	//nó sẽ lấy và lưu trữ  mọi giá trị html,echo,.. ở trang data.php
		$("#gets").html(datas);
	});

	// $.post('data.php',{name:'Tung TK',age: 25 },function(datas){ //datas là tham số tự đặt tùy ys
	// 	$("#gets").html(datas);
	// }); //Tương tự get
	$("#sum").click(function(e){
		e.preventDefault();// hàm tránh load lại trang,ngăn cản hành động mặc
		// // định của trình duyệt,tìm hiểu chi tiết
		var number1=$("#number1").val();
		var number2=$("#number2").val();


		// $.post("sumMarth.php",{number1:number1, number2:number2},function(data){
		// 	$("#result").val(data);
		// });


		$.ajax({
			url : 'sumMarth.php',
			type : 'POST',
			dataType : 'html',
			data : {number1:number1, number2:number2},
			success : function(data){
				console.log('Success');
				$("#result").val(data);
			},
			error : function(){
				console.log('error');
			}
		})

	});

})