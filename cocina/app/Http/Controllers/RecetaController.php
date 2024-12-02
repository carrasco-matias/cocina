<?php

namespace App\Http\Controllers;
use App\Http\Controllers\ProfileController;
use Illuminate\Http\Request;
use App\Models\Receta;
use App\Models\Categoria;
use App\Models\Ingrediente;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;

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

        //Get data from studentdata by id(optional)
    public function show($nombre)
    {   
        $receta = Receta::where("nombre_receta", $nombre)->first();
        return view('recetas.show', compact('receta'));
    }

    public function crear()
    {   
        $ingredientes = Ingrediente::all();
        $categorias = Categoria::all();
        return view('recetas.create', compact('ingredientes', 'categorias'));
    }

    public function creado(Request $request)
    {   
        $apidata = new Receta;
        $apidata->nombre_usuario = Auth::user()->name;
        $apidata->nombre_receta = $request->nombre_receta;
        $apidata->nombre_categoria = $request->nombre_categoria;
        $apidata->tiempo_preparacion = $request->tiempo_preparacion;
        $apidata->instrucciones = $request->instrucciones;
        $apidata->descripcion = $request->descripcion;
        $apidata->calificacion = "1";
        $apidata->fecha_creacion = Carbon::now()->toDateTimeString();
        $apidata->ingredientes = $request->ingredientes;

        if ($apidata->save()) {
            $receta = $apidata;
            return view('recetas.show', compact('receta'));
        } else {
            return ["Result" => "Error"];
        }
    }

            //Get data from studentdata by id(optional)
    public function editar($nombre)
    {   
        $receta = Receta::where("nombre_receta", $nombre)->first();
        $ingredientes = Ingrediente::all();
        $categorias = Categoria::all();
        return view('recetas.edit', compact('receta', 'ingredientes', 'categorias'));
    }

    public function user_dashboard()
    {
        Auth::user()->createToken('dev-access');
        $recetas_usuario = Receta::where("nombre_usuario", "like", Auth::user()->name)->get();
        $recetas = Receta::all();
        $categorias = Categoria::all();
        return view('dashboard', compact('recetas_usuario', 'recetas', 'categorias'));
    }

    // Add data into studentdata by JSON format
    public function add(Request $request)
    {
        $apidata = new Receta;
        $apidata->nombre_usuario = $request->nombre_usuario;
        $apidata->nombre_receta = $request->nombre_receta;
        $apidata->nombre_categoria = $request->nombre_categoria;
        $apidata->tiempo_preparacion = $request->tiempo_preparacion;
        $apidata->instrucciones = $request->instrucciones;
        $apidata->descripcion = $request->descripcion;
        $apidata->calificacion = $request->calificacion;
        $apidata->fecha_creacion = $request->fecha_creacion;
        $apidata->ingredientes = $request->ingredientes;

        if ($apidata->save()) {
            return ["Result" => "Receta creada"];
        } else {
            return ["Result" => "Error"];
        }
    }

    public function update(Request $request)
    {
        //Buscar Receta
        $apidata = Receta::where("_id", $request->id)->first();
        
        $apidata->nombre_usuario = $request->nombre_usuario;
        $apidata->nombre_receta = $request->nombre_receta;
        $apidata->nombre_categoria = $request->nombre_categoria;
        $apidata->tiempo_preparacion = $request->tiempo_preparacion;
        $apidata->instrucciones = $request->instrucciones;
        $apidata->descripcion = $request->descripcion;
        $apidata->calificacion = $request->calificacion;
        $apidata->fecha_creacion = Carbon::now()->toDateTimeString();
        $apidata->ingredientes = $request->ingredientes;
        
        if ($apidata->save()) {
            return ["Result" => "Receta actualizada"];
        } else {
            return ["Result" => "Error"];
        }
    }

    public function editado(Request $request)
    {
        //Buscar Receta
        $apidata = Receta::where("_id", $request->id)->first();
        $apidata->nombre_receta = $request->nombre_receta;
        $apidata->nombre_categoria = $request->nombre_categoria;
        $apidata->descripcion = $request->descripcion;
        $apidata->tiempo_preparacion = $request->tiempo_preparacion;
        $apidata->ingredientes = $request->ingredientes;
        $apidata->instrucciones = $request->instrucciones;
        
        if ($apidata->save()) {
            $receta = $apidata;
            return view('recetas.show', compact('receta'));
        } else {
            return ["Result" => "Error"];
        }
    }

    // Delete data into studentdata by data in JSON format
    public function delete($id)
    {
        $apidata = Receta::where("_id", $id)->first();

        if ($apidata->delete()) {
            return ["Result" => "Receta eliminada"];
        } else {
            return ["Result" => "Error"];
        }
    }

    // Delete data into studentdata by data in JSON format
    public function eliminado($id)
    {
        $apidata = Receta::where("_id", $id)->first();

        if ($apidata->delete()) {
            return redirect('/dashboard');
        } else {
            return ["Result" => "Error"];
        }
    }

    // Search data in studentdata
    public function search_receta($nombre_receta)
    {
        return Receta::where("nombre_receta", "like", "%$nombre_receta%")->get();
    }

    // Search data in studentdata
    public function search_usuario($nombre_usuario)
    {
        return Receta::where("nombre_usuario", "like", "%$nombre_usuario%")->get();
    }

    // Search data in studentdata
    public function search_categoria($nombre_categoria)
    {
        return Receta::where("nombre_categoria", "like", "%$nombre_categoria%")->get();
    }

    // Search data in studentdata
    public function search_ingredientes($nombre_receta)
    {
        $ingredientes = Receta::where("nombre_receta", "like", "%$nombre_receta%")->pluck('ingredientes')->flatten();   
        return Ingrediente::whereIn('nombre', $ingredientes)->get();
    }
}
