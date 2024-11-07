<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Categoria;

class CategoriaController extends Controller
{
    //Get data from student data by id
    public function index($id)
    {
        return Categoria::where("_id", $id)->first();
    }

    //Get data from studentdata by id(optional)
    public function get($id = null)
    {
        return ($id) ? Categoria::where("_id", $id)->first() : Categoria::all();
    }

    // Add data into studentdata by JSON format
    public function add(Request $request)
    {
        $apidata = new Categoria;
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
        $apidata = Categoria::where("_id", $request->id)->first();
        
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
        $apidata = Categoria::where("_id", $id)->first();

        if ($apidata->delete()) {
            return ["Result" => "Deleted"];
        } else {
            return ["Result" => "Failed"];
        }
    }
    // Search data in studentdata
    public function search($search)
    {
        return Categoria::where("nombre", "like", "%$search%")->get();
    }
}
