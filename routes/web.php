<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::get('about',function(){
    return view("about");
});
Route::get("about",[UserController::class,"students"]);
Route::get("form",function(){
    return view("form");
});
Route::post("form",[UserController::class,"insertData"]);
Route::get('view',[UserController::class,"viewData"]);
Route::get("edit/{id}",[UserController::class,"editData"]);
Route::post("edit",[UserController::class,"updateData"]);
Route::get("delete/{id}",[UserController::class,"deleteData"]);