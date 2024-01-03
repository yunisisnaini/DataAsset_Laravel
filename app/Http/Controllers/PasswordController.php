<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use App\Models\User;
use Illuminate\Support\Facades\Mail;
use App\Mail\ResetPasswordMail;

class PasswordController extends Controller
{
    public function showResetForm()
    {
        return view('auth.reset-password');
    }

    public function sendResetLinkEmail(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
        ]);
    
        $user = User::where('email', $request->email)->first();
        
        if ($user) {
            $resetToken = md5(now() . $user->email); // Generate a unique token
            $user->update(['reset_token' => $resetToken]);

            // Kirim email reset password ke pengguna
            try {
                Mail::to($user->email)->send(new ResetPasswordMail($resetToken));
            } catch (\Exception $e) {
                // Tangani kesalahan jika gagal mengirim email
                return back()->withErrors(['email' => 'Gagal mengirim email.']);
            }

            return redirect()->route('showformlogin')->with('status', 'Link reset password telah dikirim ke email Anda.');
        }

        return back()->withErrors(['email' => 'Email tidak ditemukan.']);
    }

    public function showUpdateForm($token)
    {
        // Find the user by the reset token
        $user = User::where('reset_token', $token)->first();
    
        if ($user) {
            // Token is valid, show the update password form
            return view('auth.update-password', ['token' => $token]);
        }
    
        // If the token is invalid or expired, handle accordingly
        abort(404, 'Token not found or expired');
    }
    
    public function updatePassword(Request $request)
    {
        $request->validate([
            'token' => 'required',
            'password' => 'required|min:8',
            'password_confirmation' => 'required|same:password',
        ]);
    
        // Find the user by the reset token
        $user = User::where('reset_token', $request->token)->first();
    
        if ($user) {
            // Update the user's password
            $user->update([
                'password' => bcrypt($request->password),
                'reset_token' => null, // Clear the reset token after successful update
            ]);
    
            return redirect()->route('login')->with('status', 'Password updated successfully. Please log in.');
        }
    
        // If the user is not found, handle accordingly
        abort(404, 'User not found');
    }
}
