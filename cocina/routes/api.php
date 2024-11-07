<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\CategoriaController;
use App\Http\Controllers\ComentarioController;
use App\Http\Controllers\IngredienteController;
use App\Http\Controllers\RecetaController;
use App\Http\Controllers\RecetasComentarioController;
use App\Http\Controllers\RecetasIngredienteController;


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

   //GET BUSCAR POR USUARIO
   Route::get('ingredientes/search/{ID_Categoria}', [IngredienteController::class, 'search_categoria']);

   //GET BUSCAR POR RECETA
   Route::get('ingredientes/search/{ID_Receta}', [IngredienteController::class, 'search_receta']);


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

   //GET BUSCAR POR USUARIO
   Route::get('recetas/search/{autor_id}', [RecetaController::class, 'search_autor']);


/******************* RECETAS COMENTARIOS ********************/


   //GET ID ESPECIFICO
   Route::get('recetas_comentarios/get/{id}', [RecetasComentarioController::class, 'index']);

   //GET TODOS O UN ID EN ESPECIFICO
   Route::get('recetas_comentarios/get/{id?}', [RecetasComentarioController::class, 'get']);

   //POST AGREGAR
   Route::post('recetas_comentarios/add', [RecetasComentarioController::class, 'add']);

   //PUT
   Route::put('recetas_comentarios/update', [RecetasComentarioController::class, 'update']);

   //DELETE
   Route::delete('recetas_comentarios/delete/{id}', [RecetasComentarioController::class, 'delete']);

   //GET BUSCAR POR RECETA
   Route::get('recetas_comentarios/search/{ID_Receta}', [RecetasComentarioController::class, 'search_receta']);


/******************* RECETAS INGREDIENTES ********************/


   //GET ID ESPECIFICO
   Route::get('recetas_ingredientes/get/{id}', [RecetasIngredienteController::class, 'index']);

   //GET TODOS O UN ID EN ESPECIFICO
   Route::get('recetas_ingredientes/get/{id?}', [RecetasIngredienteController::class, 'get']);

   //POST AGREGAR
   Route::post('recetas_ingredientes/add', [RecetasIngredienteController::class, 'add']);

   //PUT
   Route::put('recetas_ingredientes/update', [RecetasIngredienteController::class, 'update']);

   //DELETE
   Route::delete('recetas_ingredientes/delete/{id}', [RecetasIngredienteController::class, 'delete']);

   //GET BUSCAR POR RECETA
   Route::get('recetas_ingredientes/search/{ID_Receta}', [RecetasIngredienteController::class, 'search_receta']);


/*

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

*/