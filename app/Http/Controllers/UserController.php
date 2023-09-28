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
}
