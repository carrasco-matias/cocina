<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Comentario;
use App\Models\User;
use App\Models\Receta;
use App\Models\RecetasComentario;


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
        $apidata->nombre_usuario = $request->nombre_usuario;
        $apidata->nombre_receta = $request->nombre_receta;
        $apidata->contenido = $request->contenido;
        $apidata->fecha_comentario = $request->fecha_comentario;

        if ($apidata->save()) {
            return ["Result" => "Comentario creado"];
        } else {
            return ["Result" => "Error"];
        }
    }

    public function update(Request $request)
    {
        //Buscar comentario
        $apidata = Comentario::where("_id", $request->id)->first();
        
        $apidata->nombre_usuario = $request->nombre_usuario;
        $apidata->nombre_receta = $request->nombre_receta;
        $apidata->contenido = $request->contenido;
        $apidata->fecha_comentario = Carbon::now()->toDateTimeString();
        
        if ($apidata->save()) {
            return ["Result" => "Comentario actualizado"];
        } else {
            return ["Result" => "Error"];
        }
    }

    // Delete data into studentdata by data in JSON format
    public function delete($id)
    {
        $apidata = Comentario::where("_id", $id)->first();

        if ($apidata->delete()) {
            return ["Result" => "Comentario eliminado"];
        } else {
            return ["Result" => "Error"];
        }
    }
    // Search data in studentdata
    public function search_usuario($nombre_usuario)
    {
        return Comentario::where("nombre_usuario", "like", "%$nombre_usuario%")->get();
    }

    // Search data in studentdata
    public function search_receta($nombre_receta)
    {
        return Comentario::where("nombre_receta", "like", "%$nombre_receta%")->get();
    }
}
