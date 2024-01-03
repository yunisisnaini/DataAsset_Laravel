<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    @include('layouts.backend-dashboard.stylesheet')
    <link rel="icon" href="{{asset('assets/AdminLTE/dist/img/logo_ico.ico')}}">
    <title>ASSET | @yield('title')</title>
</head>

<body class="hold-transition sidebar-mini layout-fixed">
    <div class="wrapper">
        @include('layouts.backend-dashboard.preloader')
        @include('layouts.backend-dashboard.navbar')
        @include('layouts.backend-dashboard.sidebar')

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <div class="content-header">
                
            <!-- Main content -->
            @yield('content')
            </div>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->

        @include('layouts.backend-dashboard.footer')

        <!-- Control Sidebar -->
        <aside class="control-sidebar control-sidebar-dark">
            <!-- Control sidebar content goes here -->
        </aside>
        <!-- /.control-sidebar -->
    </div>
    <!-- ./wrapper -->

    @include('layouts.backend-dashboard.javascript')
    @yield('extra_javascript')
</body>

</html>