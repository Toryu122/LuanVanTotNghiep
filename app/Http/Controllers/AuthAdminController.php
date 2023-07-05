<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AuthAdminController extends Controller
{
    public function loginForm()
    {
        return view("admin.login");
    }

    public function login(Request $request)
    {
        
    }
}
