<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use DB;

class MembersControllers extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

     // $rs=DB::table('tb_members')->get();
        $rs=DB::table('tb_members')->orderBy('id','desc')->paginate(1);
        return view('pages.member.list-member',['rs'=>$rs]);
    
    }

    public function add_member(){
        $faculty=DB::table('tb_facultys')->get();
        return view('pages.member.add-member',['rs'=>$faculty]);
    }

    public function post_member(Request $request){

        try{
            $add=DB::table('tb_members')->insert([
            'id_faculty' => $request->faculty,
            'name' => $request->name,
            'email' => $request->email,
            'phone' => $request->phone,
            'address' => $request->address
            
        ]);
            return redirect(route('list-member'))->with('noti','Them moi thanh cong!');
             // Hàm with giống như kiểu tạo ra 1 session thông báo,tìm hiểu thêm
        }catch(PDOException $e){
            echo "Khong thanh cong".$e->getMessage();
        }
        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
