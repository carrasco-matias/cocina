<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Ingrediente;

class IngredienteController extends Controller
{
//Get data from student data by id
    public function index($id)
    {
        return Ingrediente::where("_id", $id)->first();
    }

    //Get data from studentdata by id(optional)
    public function get($id = null)
    {
        return ($id) ? Ingrediente::where("_id", $id)->first() : Ingrediente::all();
    }

    // Add data into studentdata by JSON format
    public function add(Request $request)
    {
        $apidata = new Ingrediente;
        $apidata->nombre_ingrediente = $request->nombre_ingrediente;
        $apidata->unidad_medida = $request->unidad_medida;
        $apidata->ID_Categoria = $request->ID_Categoria;

        if ($apidata->save()) {
            return ["Result" => "Done"];
        } else {
            return ["Result" => "Failed"];
        }
    }

    public function update(Request $request)
    {
        //Buscar comentario
        $apidata = Ingrediente::where("_id", $request->id)->first();
        $apidata->nombre_ingrediente = $request->nombre_ingrediente;
        $apidata->unidad_medida = $request->unidad_medida;
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
        $apidata = Ingrediente::where("_id", $id)->first();

        if ($apidata->delete()) {
            return ["Result" => "Deleted"];
        } else {
            return ["Result" => "Failed"];
        }
    }
    // Search data in studentdata
    public function search($search)
    {
        return Ingrediente::where("nombre_ingrediente", "like", "%$search%")->get();
    }

    // Search data in studentdata
    public function search_categoria($ID_Categoria)
    {
        return Comentario::where("ID_Categoria", $ID_Categoria)->first();
    }
}
