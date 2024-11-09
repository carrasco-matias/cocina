<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\CategoriaController;
use App\Http\Controllers\ComentarioController;
use App\Http\Controllers\IngredienteController;
use App\Http\Controllers\RecetaController;
use App\Http\Controllers\ApiTokenController;

/******************* CATEGORIAS ********************/


   //GET ID ESPECIFICO
   Route::middleware('auth:api')->get('categorias/get/{id}', [CategoriaController::class, 'index']);

   //GET TODOS O UN ID EN ESPECIFICO
   Route::middleware('auth:api')->get('categorias/get/{id?}', [CategoriaController::class, 'get']);

   //POST AGREGAR
   Route::middleware('auth:api')->post('categorias/add', [CategoriaController::class, 'add']);

   //PUT
   Route::middleware('auth:api')->put('categorias/update', [CategoriaController::class, 'update']);

   //DELETE
   Route::middleware('auth:api')->delete('categorias/delete/{id}', [CategoriaController::class, 'delete']);

   //GET SEARCH
   Route::middleware('auth:api')->get('categorias/search/{nombre_categoria}', [CategoriaController::class, 'search']);


/******************* COMENTARIOS ********************/


   //GET ID ESPECIFICO
   Route::middleware('auth:api')->get('comentarios/get/{id}', [ComentarioController::class, 'index']);

   //GET TODOS O UN ID EN ESPECIFICO
   Route::middleware('auth:api')->get('comentarios/get/{id?}', [ComentarioController::class, 'get']);

   //POST AGREGAR
   Route::middleware('auth:api')->post('comentarios/add', [ComentarioController::class, 'add']);

   //PUT
   Route::middleware('auth:api')->put('comentarios/update', [ComentarioController::class, 'update']);

   //DELETE
   Route::middleware('auth:api')->delete('comentarios/delete/{id}', [ComentarioController::class, 'delete']);


/******************* INGREDIENTES ********************/


   //GET ID ESPECIFICO
   Route::middleware('auth:api')->get('ingredientes/get/{id}', [IngredienteController::class, 'index']);

   //GET TODOS O UN ID EN ESPECIFICO
   Route::middleware('auth:api')->get('ingredientes/get/{id?}', [IngredienteController::class, 'get']);

   //POST AGREGAR
   Route::middleware('auth:api')->post('ingredientes/add', [IngredienteController::class, 'add']);

   //PUT
   Route::middleware('auth:api')->put('ingredientes/update', [IngredienteController::class, 'update']);

   //DELETE
   Route::middleware('auth:api')->delete('ingredientes/delete/{id}', [IngredienteController::class, 'delete']);

   //GET SEARCH
   Route::middleware('auth:api')->get('ingredientes/search/{nombre_ingrediente}', [IngredienteController::class, 'search']);


/******************* RECETAS ********************/


   //GET ID ESPECIFICO
   Route::middleware('auth:api')->get('recetas/get/{id}', [RecetaController::class, 'index']);

   //GET TODOS O UN ID EN ESPECIFICO
   Route::middleware('auth:api')->get('recetas/get/{id?}', [RecetaController::class, 'get']);

   //POST AGREGAR
   Route::middleware('auth:api')->post('recetas/add', [RecetaController::class, 'add']);

   //PUT
   Route::middleware('auth:api')->put('recetas/update', [RecetaController::class, 'update']);

   //DELETE
   Route::middleware('auth:api')->delete('recetas/delete/{id}', [RecetaController::class, 'delete']);

   //GET SEARCH
   Route::middleware('auth:api')->get('recetas/search/{nombre_receta}', [RecetaController::class, 'search_receta']);


/******************* RECETAS CATEGORIA ********************/


   //Mostrar todas las recetas de una categoria
   Route::middleware('auth:api')->get('categorias/{nombre_categoria}/recetas/', [RecetaController::class, 'search_categoria']);


/******************* RECETAS COMENTARIOS ********************/
   

   //Mostrar todos los comentarios de una receta
   Route::middleware('auth:api')->get('comentarios/receta/{nombre_receta}', [ComentarioController::class, 'search_receta']);

   //Mostrar todos los comentarios de un usuario
   Route::middleware('auth:api')->get('comentarios/usuario/{nombre_usuario}', [ComentarioController::class, 'search_usuario']);
   

/******************* RECETAS INGREDIENTES ********************/


   //Mostrar todos los ingredientes de una receta
   Route::middleware('auth:api')->get('receta/{nombre_receta}/ingredientes', [RecetaController::class, 'search_ingredientes']);


/******************* USUARIO ********************/
   Route::post('token/update/{id}', [ApiTokenController::class, 'update']);
