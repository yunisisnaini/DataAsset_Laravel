<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class LogDashboardAccess
{
    public function handle(Request $request, Closure $next)
    {
        // Log information before accessing the dashboard
        Log::info('Dashboard accessed by user: ' . auth()->user()->name);

        return $next($request);
    }
}