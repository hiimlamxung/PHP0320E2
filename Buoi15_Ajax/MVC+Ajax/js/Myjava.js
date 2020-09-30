$(document).ready(function(){
	$("#key").focus();
	$("#key").keyup(function() {

		var key=$("#key").val();
		if(key==''){
			location.href='index.php';

		}
		// $.get('viewsearch-data.php',{key:key},function(datas){
		// 	$("#tbody").html(datas);
		// });
		$.ajax({
			url:'viewsearch-data.php',
			type : 'GET', 
			dataType: 'html',
			data: {key: key},
		})
		.done(function(datas){
			$("#tbody").html(datas);
		})
		$("#pagimember").hide();
	});

})