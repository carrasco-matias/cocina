<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DummyApi extends Controller
{
        //Dummy Api purely for testing
    public function index()
    {
        return ["hello" => "Testing API"];
    }
}
