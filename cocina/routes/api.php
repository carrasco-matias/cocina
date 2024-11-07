<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\CategoriaController;
use App\Http\Controllers\CategoriasRecetaController;
use App\Http\Controllers\ComentarioController;
use App\Http\Controllers\IngredienteController;
use App\Http\Controllers\IngredientesRecetaController;
use App\Http\Controllers\RecetaController;


/******************* CATEGORIAS ********************/


//GET ID ESPECIFICO
Route::get('categorias/get/{id}', [CategoriaController::class, 'index']);

//GET TODOS O UN ID EN ESPECIFICO
Route::get('categorias/get/{id?}', [CategoriaController::class, 'get']);

//POST AGREGAR
Route::post('categorias/add', [CategoriaController::class, 'add']);

//PUT
Route::put('categorias/update', [CategoriaController::class, 'update']);

//DELETE
Route::delete('categorias/delete/{id}', [CategoriaController::class, 'delete']);

//GET SEARCH
Route::get('categorias/search/{search}', [CategoriaController::class, 'search']);


/******************* COMENTARIOS ********************/


//GET ID ESPECIFICO
Route::get('comentarios/get/{id}', [ComentarioController::class, 'index']);

//GET TODOS O UN ID EN ESPECIFICO
Route::get('comentarios/get/{id?}', [ComentarioController::class, 'get']);

//POST AGREGAR
Route::post('comentarios/add', [ComentarioController::class, 'add']);

//PUT
Route::put('comentarios/update', [ComentarioController::class, 'update']);

//DELETE
Route::delete('comentarios/delete/{id}', [ComentarioController::class, 'delete']);

//GET BUSCAR POR USUARIO
Route::get('comentarios/search/{usuario}', [ComentarioController::class, 'search_usuario']);

//GET BUSCAR POR RECETA
Route::get('comentarios/search/{receta}', [ComentarioController::class, 'search_receta']);


/******************* CATEGORIAS RECETAS ********************/


//GET ID ESPECIFICO
Route::get('categorias_recetas/get/{id}', [CategoriasRecetaController::class, 'index']);

//GET TODOS O UN ID EN ESPECIFICO
Route::get('categorias_recetas/get/{id?}', [CategoriasRecetaController::class, 'get']);

//POST AGREGAR
Route::post('categorias_recetas/add', [CategoriasRecetaController::class, 'add']);

//PUT
Route::put('categorias_recetas/update', [CategoriasRecetaController::class, 'update']);

//DELETE
Route::delete('categorias_recetas/delete/{id}', [CategoriasRecetaController::class, 'delete']);

//GET SEARCH
Route::get('categorias_recetas/search/{search}', [CategoriasRecetaController::class, 'search']);


/******************* INGREDIENTES ********************/


//GET ID ESPECIFICO
Route::get('ingredientes/get/{id}', [IngredienteController::class, 'index']);

//GET TODOS O UN ID EN ESPECIFICO
Route::get('ingredientes/get/{id?}', [IngredienteController::class, 'get']);

//POST AGREGAR
Route::post('ingredientes/add', [IngredienteController::class, 'add']);

//PUT
Route::put('ingredientes/update', [IngredienteController::class, 'update']);

//DELETE
Route::delete('ingredientes/delete/{id}', [IngredienteController::class, 'delete']);

//GET SEARCH
Route::get('ingredientes/search/{search}', [IngredienteController::class, 'search']);


/******************* INGREDIENTES RECETAS ********************/


//GET ID ESPECIFICO
Route::get('ingredientes_recetas/get/{id}', [IngredientesRecetaController::class, 'index']);

//GET TODOS O UN ID EN ESPECIFICO
Route::get('ingredientes_recetas/get/{id?}', [IngredientesRecetaController::class, 'get']);

//POST AGREGAR
Route::post('ingredientes_recetas/add', [IngredientesRecetaController::class, 'add']);

//PUT
Route::put('ingredientes_recetas/update', [IngredientesRecetaController::class, 'update']);

//DELETE
Route::delete('ingredientes_recetas/delete/{id}', [IngredientesRecetaController::class, 'delete']);

//GET SEARCH
Route::get('ingredientes_recetas/search/{search}', [IngredientesRecetaController::class, 'search']);


/******************* RECETAS ********************/


//GET ID ESPECIFICO
Route::get('recetas/get/{id}', [RecetaController::class, 'index']);

//GET TODOS O UN ID EN ESPECIFICO
Route::get('recetas/get/{id?}', [RecetaController::class, 'get']);

//POST AGREGAR
Route::post('recetas/add', [RecetaController::class, 'add']);

//PUT
Route::put('recetas/update', [RecetaController::class, 'update']);

//DELETE
Route::delete('recetas/delete/{id}', [RecetaController::class, 'delete']);

//GET SEARCH
Route::get('recetas/search/{search}', [RecetaController::class, 'search']);


/*
use App\Http\Controllers\PostController;
Route::resource('posts', PostController::class)->only([
   'destroy', 'show', 'store', 'update'
]);
*/


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