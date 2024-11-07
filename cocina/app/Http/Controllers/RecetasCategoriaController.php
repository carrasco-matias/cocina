<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\RecetasCategoria;

class RecetasCategoriaController extends Controller
{
 //Get data from student data by id
    public function index($id)
    {
        return RecetasCategoria::where("_id", $id)->first();
    }

    //Get data from studentdata by id(optional)
    public function get($id = null)
    {
        return ($id) ? RecetasCategoria::where("_id", $id)->first() : RecetasCategoria::all();
    }

    // Add data into studentdata by JSON format
    public function add(Request $request)
    {
        $apidata = new RecetasCategoria;
        $apidata->ID_Receta = $request->ID_Receta;
        $apidata->ID_Categoria = $request->ID_Categoria;
        if ($apidata->save()) {
            return ["Result" => "Done"];
        } else {
            return ["Result" => "Failed"];
        }
    }

    public function update(Request $request)
    {
        //Buscar Receta
        $apidata = RecetasCategoria::where("_id", $request->id)->first();
        $apidata->ID_Receta = $request->ID_Receta;
        $apidata->ID_Categoria = $request->ID_Categoria;
        
        if ($apidata->save()) {
            return ["Result" => "Updated"];
        } else {
            return ["Result" => "Failed"];
        }
    }

    // Delete data into studentdata by data in JSON format
    public function delete($id)
    {
        $apidata = RecetasCategoria::where("_id", $id)->first();

        if ($apidata->delete()) {
            return ["Result" => "Deleted"];
        } else {
            return ["Result" => "Failed"];
        }
    }
    // Search data in studentdata
    public function search_receta($ID_Receta)
    {
        return RecetasCategoria::where("ID_Receta", $ID_Receta)->get();
    }

    // Search data in studentdata
    public function search_categoria($ID_Categoria)
    {
        return RecetasCategoria::where("ID_Categoria", $ID_Categoria)->get();
    }
}
