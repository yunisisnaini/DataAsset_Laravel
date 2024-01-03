<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\TanahController;
use App\Http\Controllers\BangunanController;
use App\Http\Controllers\LoginController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Password;
use App\Models\User;
use Illuminate\Auth\Events\PasswordReset;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Session;
use App\Models\Tanah;
use App\Models\Bangunan;

// login
Route::get('/', [LoginController::class, 'index'])->name('login');
Route::post('/login-proses', [LoginController::class, 'login_proses'])->name('login-proses');
Route::get('/logout', [LoginController::class, 'logout'])->name('logout');

// Halaman register
Route::get('/register', [LoginController::class, 'register'])->name('register');
Route::post('/register-proses', [LoginController::class, 'register_proses'])->name('register-proses');

Route::get('/forgot-password', function () {
    return view('auth.forgot-password');
})->middleware('guest')->name('password.request');

Route::post('/forgot-password', function (Request $request) {
    $request->validate(['email' => 'required|email']);

    $status = Password::sendResetLink(
        $request->only('email')
    );

    if ($status === Password::RESET_LINK_SENT) {
        // Simpan pesan ke dalam sesi
        Session::flash('status', 'Email reset password berhasil dikirim! Silakan periksa email Anda.');

        // Redirect ke halaman tertentu, misalnya halaman login
        return redirect()->route('login');
    } else {
        return back()->withErrors(['email' => __($status)]);
    }
})->middleware('guest')->name('password.email');

Route::get('/reset-password/{token}', function (string $token) {
    return view('auth.reset-password', ['token' => $token]);
    // return 'berhasil kirim email notifikasi reset password';
})->middleware('guest')->name('password.reset');

Route::post('/reset-password', function (Request $request) {
    //  return 'ini reset password!';
    $request->validate([
        'token' => 'required',
        'email' => 'required|email',
        'password' => 'required|min:3|confirmed',
    ]);

    $status = Password::reset(
        $request->only('email', 'password', 'password_confirmation', 'token'),
        function (User $user, string $password) {
            $user->forceFill([
                'password' => Hash::make($password)
            ])->setRememberToken(Str::random(60));

            $user->save();

            event(new PasswordReset($user));
        }
    );

    return $status === Password::PASSWORD_RESET
        ? redirect()->route('login')->with('status', __($status))
        : back()->withErrors(['email' => [__($status)]]);
})->middleware('guest')->name('password.update');

// dashboard
Route::get('/dashboard', [DashboardController::class, 'index'])->middleware('logDashboardAccess')->name('dashboard');

// tanah
// Route::group(['middleware' => ['checkDataExistence:App\Http\Controllers\TanahController,edit']], function () {
Route::get('/tanah', [TanahController::class, 'getDataTanah']);
Route::get('/tanah/create', [TanahController::class, 'showCreateTanah']);
Route::get('/tanah/edit/{id}', [TanahController::class, 'edit'])->name('tanah.edit');
Route::get('/tanah/delete/{id}', [TanahController::class, 'delete'])->name('tanah.delete');
Route::get('/tanah/download/{id}', [TanahController::class, 'download'])->name('tanah.download');
Route::post('/tanah/store', [TanahController::class, 'store'])->name('tanah.store');
Route::put('/tanah/update/{id}', [TanahController::class, 'update'])->name('tanah.update');
// });

// bangunan
// Route::group(['middleware' => ['checkDataExistence:App\Http\Controllers\BangunanController,showEditBangunan']], function () {
Route::get('/bangunan', [BangunanController::class, 'getDataBangunan']);
Route::get('/bangunan/create', [BangunanController::class, 'showCreateBangunan']);
Route::get('/bangunan/edit/{id}', [BangunanController::class, 'edit'])->name('bangunan.edit');
Route::get('/bangunan/delete/{id}', [BangunanController::class, 'delete'])->name('bangunan.delete');
Route::get('/bangunan/download/{id}', [BangunanController::class, 'download'])->name('bangunan.download');
Route::post('/bangunan/store', [BangunanController::class, 'store'])->name('bangunan.store');
Route::put('/bangunan/update/{id}', [BangunanController::class, 'update'])->name('bangunan.update');
// });