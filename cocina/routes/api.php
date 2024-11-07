<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\CategoriaController;
use App\Http\Controllers\ComentarioController;
use App\Http\Controllers\IngredienteController;
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
   Route::get('categorias/search/{nombre_categoria}', [CategoriaController::class, 'search']);


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
   Route::get('ingredientes/search/{nombre_ingrediente}', [IngredienteController::class, 'search']);


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
   Route::get('recetas/search/{nombre_receta}', [RecetaController::class, 'search_receta']);


/******************* RECETAS CATEGORIA ********************/


   //Mostrar todas las recetas de una categoria
   Route::get('categorias/{nombre_categoria}/recetas/', [RecetaController::class, 'search_categoria']);


/******************* RECETAS COMENTARIOS ********************/
   

   //Mostrar todos los comentarios de una receta
   Route::get('comentarios/receta/{nombre_receta}', [ComentarioController::class, 'search_receta']);

   //Mostrar todos los comentarios de un usuario
   Route::get('comentarios/usuario/{nombre_usuario}', [ComentarioController::class, 'search_usuario']);
   

/******************* RECETAS INGREDIENTES ********************/


   //Mostrar todos los ingredientes de una receta
   Route::get('receta/{nombre_receta}/ingredientes', [RecetaController::class, 'search_ingredientes']);


/*

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

*/