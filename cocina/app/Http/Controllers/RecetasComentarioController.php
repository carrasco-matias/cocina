<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\RecetasComentario;

class RecetasComentarioController extends Controller
{
 //Get data from student data by id
    public function index($id)
    {
        return RecetasComentario::where("_id", $id)->first();
    }

    //Get data from studentdata by id(optional)
    public function get($id = null)
    {
        return ($id) ? RecetasComentario::where("_id", $id)->first() : RecetasComentario::all();
    }

    // Add data into studentdata by JSON format
    public function add(Request $request)
    {
        $apidata = new RecetasComentario;
        $apidata->ID_Receta = $request->ID_Receta;
        $apidata->ID_Comentario = $request->ID_Comentario;
        if ($apidata->save()) {
            return ["Result" => "Done"];
        } else {
            return ["Result" => "Failed"];
        }
    }

    public function update(Request $request)
    {
        //Buscar Receta
        $apidata = RecetasComentario::where("_id", $request->id)->first();
        $apidata->ID_Receta = $request->ID_Receta;
        $apidata->ID_Comentario = $request->ID_Comentario;
        
        if ($apidata->save()) {
            return ["Result" => "Updated"];
        } else {
            return ["Result" => "Failed"];
        }
    }

    // Delete data into studentdata by data in JSON format
    public function delete($id)
    {
        $apidata = RecetasComentario::where("_id", $id)->first();

        if ($apidata->delete()) {
            return ["Result" => "Deleted"];
        } else {
            return ["Result" => "Failed"];
        }
    }

    // Search data in studentdata
    public function search_comentario($ID_Comentario)
    {
        return RecetasComentario::where("ID_Comentario", $ID_Comentario)->get();
    }

    // Search data in studentdata
    public function search_receta($ID_Receta)
    {
        return RecetasComentario::where("ID_Receta", $ID_Receta)->get();
    }


}
