<?php

namespace App\Http\Controllers;

use App\Models\Receta_Comentario;
use App\Http\Requests\StoreReceta_ComentarioRequest;
use App\Http\Requests\UpdateReceta_ComentarioRequest;

class RecetaComentarioController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        echo "<br><h1>Mantenedor comentarios en recetas</h1><br>";

        foreach (Receta_Comentario::all() as $receta_comentario) {
            echo $receta_comentario;
            echo "<br>";
        }
        
        return view('mantenedores.receta_comentario.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreReceta_ComentarioRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $receta_comentario = RecetaComentario::findOrFail($id);
        dd($receta_comentario);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Receta_Comentario $receta_Comentario)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateReceta_ComentarioRequest $request, Receta_Comentario $receta_Comentario)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Receta_Comentario $receta_Comentario)
    {
        //
    }
}
