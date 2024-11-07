<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Receta;
use Carbon\Carbon;

class RecetaController extends Controller
{
 //Get data from student data by id
    public function index($id)
    {
        return Receta::where("_id", $id)->first();
    }

    //Get data from studentdata by id(optional)
    public function get($id = null)
    {
        return ($id) ? Receta::where("_id", $id)->first() : Receta::all();
    }

    // Add data into studentdata by JSON format
    public function add(Request $request)
    {
        $apidata = new Receta;
        $apidata->autor_id = $request->autor_id;
        $apidata->nombre_receta = $request->nombre_receta;
        $apidata->tiempo_preparacion = $request->tiempo_preparacion;
        $apidata->instrucciones = $request->instrucciones;
        $apidata->descripcion = $request->descripcion;
        $apidata->calificacion = $request->calificacion;
        $apidata->fecha_creacion = $request->fecha_creacion;

        if ($apidata->save()) {
            return ["Result" => "Done"];
        } else {
            return ["Result" => "Failed"];
        }
    }

    public function update(Request $request)
    {
        //Buscar Receta
        $apidata = Receta::where("_id", $request->id)->first();
        
        $apidata->autor_id = $request->autor_id;
        $apidata->nombre_receta = $request->nombre_receta;
        $apidata->tiempo_preparacion = $request->tiempo_preparacion;
        $apidata->instrucciones = $request->instrucciones;
        $apidata->descripcion = $request->descripcion;
        $apidata->calificacion = $request->calificacion;
        $apidata->fecha_creacion = Carbon::now()->toDateTimeString();
        
        if ($apidata->save()) {
            return ["Result" => "Updated"];
        } else {
            return ["Result" => "Failed"];
        }
    }

    // Delete data into studentdata by data in JSON format
    public function delete($id)
    {
        $apidata = Receta::where("_id", $id)->first();

        if ($apidata->delete()) {
            return ["Result" => "Deleted"];
        } else {
            return ["Result" => "Failed"];
        }
    }

    // Search data in studentdata
    public function search_receta($nombre_receta)
    {
        return Receta::where("nombre_receta", "like", "%$nombre_receta%")->get();
    }

    // Search data in studentdata
    public function search_autor($autor_id)
    {
        return Receta::where("autor_id", "like", "%$autor_id%")->get();
    }
}
