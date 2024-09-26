<?php

namespace App\Http\Controllers;

use App\Models\Ingrediente;
use App\Http\Requests\StoreIngredienteRequest;
use App\Http\Requests\UpdateIngredienteRequest;

class IngredienteController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        echo "<br><h1>Mantenedor ingredientes</h1><br>";

        foreach (Ingrediente::all() as $ingrediente) {
            echo $ingrediente->nombre_ingrediente;
            echo "<br>";
        }
        
        return view('mantenedores.ingrediente.index');
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
    public function store(StoreIngredienteRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $ingrediente = Ingrediente::findOrFail($id);
        echo $ingrediente->nombre_ingrediente;
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Ingrediente $ingrediente)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateIngredienteRequest $request, Ingrediente $ingrediente)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Ingrediente $ingrediente)
    {
        //
    }
}
