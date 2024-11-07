<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\CategoriasReceta;

class CategoriasRecetaController extends Controller
{
     public function show($id)
   {
       return view('categoria_receta', [
           'categoria_receta' => CategoriasReceta::where('id', '=', $id)->first()
       ]);
   }

   public function store(Request $request)
   {
       $categorias_receta = new CategoriasReceta;

       $categorias_receta->nombre_categorias_receta = $request->nombre_categorias_receta;
       $categorias_receta->save();

       return response()->json(["result" => "ok"], 201);
   }

    public function update(Request $request, $categorias_recetaId)
   {
       $categorias_receta = CategoriasReceta::find($categorias_recetaId);
       $categorias_receta->nombre_categorias_receta = $request->nombre_categorias_receta;
       $categorias_receta->save();

       return response()->json(["result" => "ok"], 201);       
   }

   public function destroy($categorias_recetaId)
   {
    $categorias_receta = CategoriasReceta::find($categorias_recetaId);
    $categorias_receta->delete();

    return response()->json(["result" => "ok"], 200);       
   }
}
