<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
        <img src="{{asset('assets/AdminLTE/dist/img/logo_ico.ico')}}" style="max-width: 40px; max-height: 40px; margin-right: 3px; margin-left: 10px; ">
        <span class="brand-text font-weight-light" style="font-size: 30px;"><b>ASSET</b></span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user panel (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <div class="image">
                <img src="{{asset('assets/AdminLTE/dist/img/profile.png')}}" class="img-circle elevation-2" alt="User Image">
            </div>
            <div class="info">
                <a href="#" class="d-block">Admin</a>
            </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar" data-widget="treeview" role="menu" data-accordion="false">
                <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
                <li class="nav-item">
                    <a id="dashboard" href="/dashboard" class="nav-link">
                        <i class="nav-icon fas fa-th"></i>
                        <p>
                            Dashboard
                        </p>
                    </a>
                <li class="nav-item menu-open">
                    <a class="nav-link">
                        <i class="nav-icon fas fa-users"></i>
                        <p>
                            Asset
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview nav-sidebar">
                        <li class="nav-item">
                            <a id="tanah" href="/tanah" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Asset Tanah</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a id="bangunan" href="/bangunan" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Asset Bangunan</p>
                            </a>
                        </li>
                    </ul>
                <li class="nav-item">
                    <a href="/logout" class="nav-link">
                        <i class="nav-icon fas fa-power-off"></i>
                        <p>
                            Logout
                        </p>
                    </a>
                </li>
            </ul>
            </li>
            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>