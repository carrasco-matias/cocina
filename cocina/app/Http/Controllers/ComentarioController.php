<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Comentario;
use Carbon\Carbon;

class ComentarioController extends Controller
{

    //Get data from student data by id
    public function index($id)
    {
        return Comentario::where("_id", $id)->first();
    }

    //Get data from studentdata by id(optional)
    public function get($id = null)
    {
        return ($id) ? Comentario::where("_id", $id)->first() : Comentario::all();
    }

    // Add data into studentdata by JSON format
    public function add(Request $request)
    {
        $apidata = new Comentario;
        $apidata->ID_Usuario = $request->ID_Usuario;
        $apidata->ID_Receta = $request->ID_Receta;
        $apidata->contenido = $request->contenido;
        $apidata->fecha_comentario = $request->fecha_comentario;

        if ($apidata->save()) {
            return ["Result" => "Done"];
        } else {
            return ["Result" => "Failed"];
        }
    }

    public function update(Request $request)
    {
        //Buscar comentario
        $apidata = Comentario::where("_id", $request->id)->first();
        
        $apidata->ID_Usuario = $request->ID_Usuario;
        $apidata->ID_Receta = $request->ID_Receta;
        $apidata->contenido = $request->contenido;
        $apidata->fecha_comentario = Carbon::now()->toDateTimeString();
        
        if ($apidata->save()) {
            return ["Result" => "Updated"];
        } else {
            return ["Result" => "Failed"];
        }
    }

    // Delete data into studentdata by data in JSON format
    public function delete($id)
    {
        $apidata = Comentario::where("_id", $id)->first();

        if ($apidata->delete()) {
            return ["Result" => "Deleted"];
        } else {
            return ["Result" => "Failed"];
        }
    }
    // Search data in studentdata
    public function search_usuario($usuario)
    {
        return Comentario::where("ID_Usuario", "like", "%$usuario%")->get();
    }

    // Search data in studentdata
    public function search_receta($receta)
    {
        return Comentario::where("ID_Receta", "like", "%$receta%")->get();
    }
}
