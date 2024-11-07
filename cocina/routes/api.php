<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\PostController;

Route::resource('posts', PostController::class)->only([
   'destroy', 'show', 'store', 'update'
]);

//use App\Http\Controllers\StudentApiController;


/*
//GET ID ESPECIFICO
Route::get('getdata/{id}', [StudentApiController::class, 'index']);

//GET TODOS O UN ID EN ESPECIFICO
Route::get('get/{id?}', [StudentApiController::class, 'getdata']);

//POST AGREGAR
Route::post('add', [StudentApiController::class, 'adddata']);

//PUT
Route::put('update', [StudentApiController::class, 'updatedata']);

//DELETE
Route::delete('delete/{id}', [StudentApiController::class, 'deletedata']);

//GET SEARCH
Route::get('search/{search}', [StudentApiController::class, 'searchdata']);

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

*/