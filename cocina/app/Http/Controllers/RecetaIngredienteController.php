<?php

namespace App\Http\Controllers;

use App\Models\Receta_Ingrediente;
use App\Http\Requests\StoreReceta_IngredienteRequest;
use App\Http\Requests\UpdateReceta_IngredienteRequest;

class RecetaIngredienteController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        echo "<br><h1>Mantenedor ingredientes en recetas</h1><br>";

        foreach (Receta_Ingrediente::all() as $receta_ingrediente) {
            echo $receta_ingrediente;
            echo "<br>";
        }
        
        return view('mantenedores.receta_ingrediente.index');
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
    public function store(StoreReceta_IngredienteRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Receta_Ingrediente $receta_Ingrediente)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Receta_Ingrediente $receta_Ingrediente)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateReceta_IngredienteRequest $request, Receta_Ingrediente $receta_Ingrediente)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Receta_Ingrediente $receta_Ingrediente)
    {
        //
    }
}
