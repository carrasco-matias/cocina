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
        $apidata->nombre = $request->nombre;
        $apidata->unidad_medida = $request->unidad_medida;

        if ($apidata->save()) {
            return ["Result" => "Ingrediente creado"];
        } else {
            return ["Result" => "Error"];
        }
    }

    public function update(Request $request)
    {
        //Buscar comentario
        $apidata = Ingrediente::where("_id", $request->id)->first();
        $apidata->nombre = $request->nombre;
        $apidata->unidad_medida = $request->unidad_medida;

        if ($apidata->save()) {
            return ["Result" => "Ingrediente actualizado"];
        } else {
            return ["Result" => "Error"];
        }
    }

    // Delete data into studentdata by data in JSON format
    public function delete($id)
    {
        $apidata = Ingrediente::where("_id", $id)->first();

        if ($apidata->delete()) {
            return ["Result" => "Ingrediente eliminado"];
        } else {
            return ["Result" => "Error"];
        }
    }
    // Search data in studentdata
    public function search($nombre_ingrediente)
    {
        return Ingrediente::where("nombre", "like", "%$nombre_ingrediente%")->get();
    }
}
