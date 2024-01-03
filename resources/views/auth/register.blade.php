<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="{{asset('assets/AdminLTE/dist/img/logo_ico.ico')}}">
    <title>ASSET | Register</title>

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
                <a class="h1"><b>Register</b></a>
            </div>
            <div class="card-body">
                <form action="{{ route('register-proses') }}" method="post">
                    @csrf
                    <div class="input-group mb-3">
                        <input type="text" class="form-control @error('name') is-invalid @enderror" placeholder="Name" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus>
                        <div class="input-group-append"></div>
                        <div class="input-group-text">
                            <span class="fas fa-user"></span>
                        </div>
                        @error('name')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                        @enderror
                    </div>

                    <div class="input-group mb-3">
                        <input type="username" class="form-control @error('username') is-invalid @enderror" placeholder="Username" name="username" value="{{ old('username') }}" required autocomplete="username" autofocus>
                        <div class="input-group-append"></div>
                        <div class="input-group-text">
                            <span class="fas fa-user"></span>
                        </div>
                        @error('username')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                        @enderror
                    </div>

                    <div class="input-group mb-3">
                        <input type="email" class="form-control @error('email') is-invalid @enderror" placeholder="Email" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>
                        <div class="input-group-append"></div>
                        <div class="input-group-text">
                            <span class="fas fa-envelope"></span>
                        </div>
                        @error('email')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                        @enderror
                    </div>

                    <div class="input-group mb-3">
                        <input id="password" type="password" placeholder="Password" aria-label="Password" class="form-control @error('password') is-invalid @enderror" name="password" value="{{ old('password') }}" required autocomplete="password" autofocus>
                        <span class="input-group-text" onclick="togglePassword()">
                            <i class="fas fa-eye-slash" id="eye-icon"></i>
                        </span>
                        @error('password')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                        @enderror
                    </div>

                    <div class="social-auth-links text-center mt-2 mb-3">
                        <button type="submit" class="btn btn-primary btn-block">Sign Up</button>
                    </div>
            </div>
        </div>
        </form>

        <script>
            function togglePassword() {
                var passwordInput = document.getElementById('password');
                var eyeIcon = document.getElementById('eye-icon');
                var errorMessageContainer = document.getElementById('error-message');

                if (passwordInput.type === 'password') {
                    passwordInput.type = 'text';
                    eyeIcon.classList.remove('fa-eye-slash');
                    eyeIcon.classList.add('fa-eye');
                    errorMessageContainer.innerHTML = ''; // Bersihkan pesan kesalahan saat tombol mata diubah
                } else {
                    passwordInput.type = 'password';
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

        @if($message = Session::get('success'))
        <script>
            Swal.fire('{{ $message }}');
        </script>
        @endif

        @if($message = Session::get('failed'))
        <script>
            Swal.fire('{{ $message }}');
        </script>
        @endif

</body>

</html>