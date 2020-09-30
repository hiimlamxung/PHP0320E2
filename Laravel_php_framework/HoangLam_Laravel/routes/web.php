<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('hocvien', function(){
	$rs=DB::select('SELECT *FROM tb_members');
	dd($rs);
});

Route::get('themmoi', function() {
    $add=DB::insert("INSERT INTO tb_members (name,email,id_faculty,phone,address) VALUES (?,?,?,?,?)",['Lam','abc@gmail.com',1,'0398723993','HN']);
    try{

    }catch(PDOException $e){
     echo " Khong them duoc".$e->getMessage();
    }
});

Route::get('/', function () {
    return view('pages.home');
});

Route::group(['prefix'=>'hoc-vien'],function(){
	// Route::get('danh-sach', function() {
	// 	$rs=DB::table('tb_members')->where('id',3)->get();
	//     return view('pages.member.list-member',['rs'=>$rs]);
	// })->name('list-member');

	Route::get('danh-sach','MembersControllers@index')->name('list-member');

	Route::get('them-moi','MembersControllers@add_member')->name('add-member');

	Route::post('them-moi','MembersControllers@post_member')->name('post-member');
});

Route::get('home','HomeControllers@check');
Route::get('about/{name}','HomeControllers@getName');

Route::resource('user','UserController');

// Route::get('/', function () {
//     return view('demo');
// });


// Route::get('infomation/', function () {
//     return view('demo');
// });

// Route::get('info',function(){
// 	echo "xin chao cac ban !";
// });

// Route::get('info/myname',function(){
// 	return "Cam on ban !";
// }); 

//   // Route::post cũng tương tự như trên

// Route::match(['get','post'],'data',function(){
// 	echo "Route match co 2 phuog thuc post get";
// });

// Route::resource('user','UserController');

// Route::group(['prefix'=>'admin'],function(){
// 	Route::get('news', function() {
// 	    echo "Day la trang tin tuc";
// 	});

// 	Route::get('member', function() {
// 	    echo "Day la trang thanh vien";
// 	});
// });

// Route::get('get-name/{name}', function($name) {
//     echo "Ten cua toi la ".$name;
// });

// Route::get('get-name/{name}/{age}', function($name,$age) {
//     return view('index', ['name' => $name],['age' => $age]);
// });

// Route::get('sum/{number1}/{number2}', function($number1,$number2) {
//     echo "Tong = ".$sum=$number1+$number2;
// });

// Route::get('user/info/member', function() {
//     echo " Thong tin thanh vien lop PHP0320E2";
// })->name('php0320');

// //Ủy quyền. Chuyển hướng người dùng đến trang user/info/member khi truy cập trang info (giốg chức năng header)
// Route::get('info',function(){
// 	return redirect(route('php0320'));
// });
 //// hoặc 
// Route::get('info',function(){
// 	return redirect('user/info/member');
// });

// Ràng buộcc tham số truyền vào
// Route::get('info/{name}', function($name) {
//     return "Name: ".$name." age:".$age;
// })->where(['name'=>'[a-zA-Z]+' ]);
