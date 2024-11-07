<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Apimodel;

class StudentApiController extends Controller
{
    //Get data from student data by id
    public function index($id)
    {
        return Apimodel::find($id);
    }

    //Get data from studentdata by id(optional)
    public function getdata($id = null)
    {
        return ($id) ? Apimodel::find($id) : Apimodel::all();
    }

    // Add data into studentdata by JSON format
    public function adddata(Request $request)
    {
        $apidata = new Apimodel;
        $apidata->name = $request->name;
        $apidata->email = $request->email;
        $apidata->location = $request->location;

        if ($apidata->save()) {
            return ["Result" => "Done"];
        } else {
            return ["Result" => "Failed"];
        }
    }

    // Update data into studentdata by data in JSON format
    public function updatedata(Request $request)
    {
        $apidata = Apimodel::find($request->id);

        $apidata->name = $request->name;
        $apidata->email = $request->email;
        $apidata->location = $request->location;

        if ($apidata->save()) {
            return ["Result" => "Updated"];
        } else {
            return ["Result" => "Failed"];
        }
    }

    // Delete data into studentdata by data in JSON format
    public function deletedata(Request $request)
    {
        $apidata = Apimodel::find($request->id);

        if ($apidata->delete()) {
            return ["Result" => "Deleted"];
        } else {
            return ["Result" => "Failed"];
        }
    }

    // Search data in studentdata
    public function searchdata($search)
    {
        return Apimodel::where("name", "like", "%$search%")->get();
    }
}