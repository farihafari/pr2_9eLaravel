<?php

namespace App\Http\Controllers;
use App\Models\employee;
use Illuminate\Http\Request;

class UserController extends Controller
{
    // my fun
    function students(){
    $array = ["ali","asad","sana","saba"];
    return view("about",compact("array"));
    }
    function insertData(REQUEST $req){
$obj = new employee();
$obj->name= $req->userName;
$obj->email = $req->userEmail;
$obj->save();
echo "<script>alert('data inserted into table')</script>";
    }
    function viewData(){
        $data = employee::all();
        return view("view",compact("data"));
    }
    function editData($id){
$data = employee::find($id);
return view("edit",compact("data"));
    }
    function updateData(Request $req){
        $updateData = employee::find($req->userId);
        $updateData->name = $req->userName;
        $updateData->email = $req->userEmail;
        $updateData->save();
        return redirect("view");
    }
    function deleteData($id){
$data = employee::find($id);
$data ->delete();
return redirect("view");
    }
}
