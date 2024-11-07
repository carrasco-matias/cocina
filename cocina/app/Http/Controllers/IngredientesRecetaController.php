<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\IngredientesReceta;

class IngredientesRecetaController extends Controller
{
 public function index($id)
    {
        return IngredientesReceta::where("_id", $id)->first();
    }

    //Get data from studentdata by id(optional)
    public function get($id = null)
    {
        return ($id) ? IngredientesReceta::where("_id", $id)->first() : IngredientesReceta::all();
    }

    // Add data into studentdata by JSON format
    public function add(Request $request)
    {
        $apidata = new IngredientesReceta;
        $apidata->nombre = $request->nombre;

        if ($apidata->save()) {
            return ["Result" => "Done"];
        } else {
            return ["Result" => "Failed"];
        }
    }

    public function update(Request $request)
    {
        //Buscar comentario
        $apidata = IngredientesReceta::where("_id", $request->id)->first();
        
        $apidata->nombre = $request->nombre;

        if ($apidata->save()) {
            return ["Result" => "Updated"];
        } else {
            return ["Result" => "Failed"];
        }
    }

    // Delete data into studentdata by data in JSON format
    public function delete($id)
    {
        $apidata = IngredientesReceta::where("_id", $id)->first();

        if ($apidata->delete()) {
            return ["Result" => "Deleted"];
        } else {
            return ["Result" => "Failed"];
        }
    }
    // Search data in studentdata
    public function search($search)
    {
        return IngredientesReceta::where("nombre", "like", "%$search%")->get();
    }
}
