<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\RecetasIngrediente;

class RecetasIngredienteController extends Controller
{
 //Get data from student data by id
    public function index($id)
    {
        return RecetasIngrediente::where("_id", $id)->first();
    }

    //Get data from studentdata by id(optional)
    public function get($id = null)
    {
        return ($id) ? RecetasIngrediente::where("_id", $id)->first() : RecetasIngrediente::all();
    }

    // Add data into studentdata by JSON format
    public function add(Request $request)
    {
        $apidata = new RecetasIngrediente;
        $apidata->ID_Receta = $request->ID_Receta;
        $apidata->ID_Ingrediente = $request->ID_Ingrediente;
        if ($apidata->save()) {
            return ["Result" => "Done"];
        } else {
            return ["Result" => "Failed"];
        }
    }

    public function update(Request $request)
    {
        //Buscar Receta
        $apidata = RecetasIngrediente::where("_id", $request->id)->first();
        $apidata->ID_Receta = $request->ID_Receta;
        $apidata->ID_Ingrediente = $request->ID_Ingrediente;
        
        if ($apidata->save()) {
            return ["Result" => "Updated"];
        } else {
            return ["Result" => "Failed"];
        }
    }

    // Delete data into studentdata by data in JSON format
    public function delete($id)
    {
        $apidata = RecetasIngrediente::where("_id", $id)->first();

        if ($apidata->delete()) {
            return ["Result" => "Deleted"];
        } else {
            return ["Result" => "Failed"];
        }
    }
    // Search data in studentdata
    public function search_receta($ID_Receta)
    {
        return RecetasIngrediente::where("ID_Receta", $ID_Receta)->get();
    }

    // Search data in studentdata
    public function search_ingrediente($ID_Ingrediente)
    {
        return RecetasIngrediente::where("ID_Ingrediente", $ID_Ingrediente)->get();
    }
}
