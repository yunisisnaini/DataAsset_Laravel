<!-- Main content -->
<section class="content">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title"><b>DASHBOARD</b></h3>
                    </div>

                    <!-- membuat card body full 1 halaman -->
                    <style>
                        .card-body {
                            min-height: calc(109vh - 300px);
                        }
                    </style>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-3 col-6">
                                <!-- small box -->
                                <div class="small-box bg-info">
                                    <div class="inner">
                                        <h3>{{ $totalTanah }}</h3>
                                        <p>Data Asset Tanah</p>
                                    </div>
                                    <div class="icon">
                                        <i class="ion ion-map"></i>
                                    </div>
                                    <a href="/tanah" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                                </div>
                            </div>
                            <!-- ./col -->
                            <div class="col-lg-3 col-6">
                                <!-- small box -->
                                <div class="small-box bg-success">
                                    <div class="inner">
                                        <h3>{{ $totalBangunan }}</h3>
                                        <p>Data Asset Gedung & Bangunan</p>
                                    </div>
                                    <div class="icon">
                                        <i class="ion ion-home"></i>
                                    </div>
                                    <a href="/bangunan" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- Your content for the Tanah section goes here -->
                        <!-- For simplicity, you can copy the Tanah section HTML here -->
                    </div>
                    <!-- /.card-body -->
                </div>
                <!-- /.card -->
            </div>
            <!-- Small boxes (Stat box) -->

            <!-- /.row (main row) -->
        </div><!-- /.container-fluid -->
</section>