<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use SebastianBergmann\CodeCoverage\Report\Html\Dashboard;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class LoginController extends Controller
{
    //

    public function index()
    {
        return view('auth.login');
    }

    public function login_proses(Request $request)
    {
        $request->validate([
            'login' => 'required',
            'password' => 'required',
        ]);

        $loginType = filter_var($request->input('login'), FILTER_VALIDATE_EMAIL) ? 'email' : 'username';
    
        $credentials = [
            $loginType => $request->input('login'),
            'password' => $request->input('password'),
        ];

        if (Auth::attempt($credentials)) {
            // Authentication successful
            return redirect()->route('dashboard');
        }

        // Authentication failed
        $userWithEmailExists = User::where('email', $request->email)->exists();

        if ($userWithEmailExists) {
            // Email is correct, but password is wrong
            return redirect()->route('login')->with('error', 'Incorrect password')->withErrors(['password' => 'Incorrect password']);
        }

        // Both email and password are incorrect
        return redirect()->route('login')->with('error', 'Incorrect username/email and password')->withErrors(['login' => 'Incorrect username/email', 'password' => 'Incorrect password']);
    }


    public function logout()
    {
        Auth::logout();
        return redirect()->route('login');
    }

    public function register()
    {
        return view('auth.register');
    }

    public function register_proses(Request $request)
    {
        $request->validate([
            'name'      => 'required',
            'email'     => 'required|email|unique:users,email',
            'password'  => 'required|min:3',
        ]);

        User::create([
            'name'              => $request->name,
            'username'          => $request->username,
            'email'             => $request->email,
            'password'          => bcrypt($request->password),
            'remember_token'    => Str::random(60),
        ]);

        return redirect()->route('login');
    }
}