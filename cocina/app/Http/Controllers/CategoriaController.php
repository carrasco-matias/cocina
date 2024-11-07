<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Categoria;

class CategoriaController extends Controller
{
    public function show($id)
   {
       return view('categoria', [
           'categoria' => categoria::where('id', '=', $id)->first()
       ]);
   }

   public function store(Request $request)
   {
       $categoria = new categoria;

       $categoria->nombre_categoria = $request->nombre_categoria;
       $categoria->save();

       return response()->json(["result" => "ok"], 201);
   }

    public function update(Request $request, $categoriaId)
   {
       $categoria = categoria::find($categoriaId);
       $categoria->nombre_categoria = $request->nombre_categoria;
       $categoria->save();

       return response()->json(["result" => "ok"], 201);       
   }

   public function destroy($categoriaId)
   {
    $categoria = categoria::find($categoriaId);
    $categoria->delete();

    return response()->json(["result" => "ok"], 200);       
   }
}
