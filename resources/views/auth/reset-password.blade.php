<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="{{asset('assets/AdminLTE/dist/img/logo_ico.ico')}}">
    <title>ASSET | Reset Password</title>

    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="{{asset('assets/AdminLTE/plugins/fontawesome-free/css/all.min.css')}}">
    <!-- icheck bootstrap -->
    <link rel="stylesheet" href="{{asset('assets/AdminLTE/icheck-bootstrap/icheck-bootstrap.min.css')}}">
    <!-- Theme style -->
    <link rel="stylesheet" href="{{asset('assets/AdminLTE/dist/css/adminlte.min.css')}}">
    <!-- SweetAlert2 -->
    <link rel="stylesheet" href="{{asset('assets/AdminLTE/plugins/sweetalert2-theme-bootstrap-4/bootstrap-4.min.css')}}">
    <!-- Jika menggunakan CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX" crossorigin="anonymous" />
</head>

<body class="hold-transition login-page" style="background-image: url('{{ asset('assets/AdminLTE/dist/img/background.png') }}'); background-size: cover;">
    <div class="login-box">
        <!-- /.login-logo -->
        <div class="card card-outline card-primary">
            <div class="card-header text-center">
                <a class="h1"><b>Reset Password</b></a>
            </div>
            <div class="card-body">
                <form action="{{ route('password.update') }}" method="post">
                    @csrf
                    <input type="hidden" name="token" value="{{request()->token}}">
                    <input type="hidden" name="email" value="{{request()->email}}">
                    <div class="input-group mb-3">
                        <input id="password" type="password" placeholder="Enter your new password" aria-label="Password" class="form-control @error('password') is-invalid @enderror" name="password" value="{{ old('password') }}" required autocomplete="password" autofocus>
                        <span class="input-group-text" onclick="togglePassword('password', 'eye-icon-password')">
                            <i class="fas fa-eye-slash" id="eye-icon-password"></i>
                        </span>
                        @error('password')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                        @enderror
                    </div>

                    <div class="input-group mb-3">
                        <input id="password_confirmation" type="password" name="password_confirmation" placeholder="Confirm your new password" aria-label="Password" class="form-control @error('password') is-invalid @enderror" value="{{ old('password') }}" required autocomplete="password" autofocus>
                        <span class="input-group-text" onclick="togglePassword('password_confirmation', 'eye-icon-password_confirmation')">
                            <i class="fas fa-eye-slash" id="eye-icon-password_confirmation"></i>
                        </span>
                        @error('password')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                        @enderror
                    </div>

                    <div class="social-auth-links text-center mt-2 mb-3">
                        <button type="submit" class="btn btn-primary btn-block">Update Password</button>
                    </div>
                </form>

                <script>
                    function togglePassword(inputId, eyeIconId) {
                        var passwordInput = document.getElementById(inputId);
                        var eyeIcon = document.getElementById(eyeIconId);

                        if (passwordInput.type === "password") {
                            passwordInput.type = "text";
                            eyeIcon.classList.remove('fa-eye-slash');
                            eyeIcon.classList.add('fa-eye');
                        } else {
                            passwordInput.type = "password";
                            eyeIcon.classList.remove('fa-eye');
                            eyeIcon.classList.add('fa-eye-slash');
                        }
                    }
                </script>
                
                <!-- jQuery -->
                <script src="{{asset('assets/AdminLTE/plugins/jquery/jquery.min.js')}}"></script>
                <!-- Bootstrap 4 -->
                <script src="{{asset('assets/AdminLTE/plugins/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
                <!-- AdminLTE App -->
                <script src="{{asset('assets/AdminLTE/dist/js/adminlte.js')}}"></script>
                <!-- SweetAlert2 -->
                <script src="{{asset('assets/AdminLTE/plugins/sweetalert2/sweetalert2.min.js')}}"></script>
                <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

</body>

</html>