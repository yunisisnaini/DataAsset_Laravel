<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Tanah;
use App\Models\Bangunan;

class DashboardController extends Controller
{
    public function index()
    {
        $totalTanah = Tanah::count();
        $totalBangunan = Bangunan::count();

        return view('dashboard.index', compact('totalTanah', 'totalBangunan'));
    }

    // public function tanah()
    // {
    //     return view('Tanah.index');
    // }

    // public function bangunan()
    // {
    //     return view('Bangunan.index');
    // }
}
