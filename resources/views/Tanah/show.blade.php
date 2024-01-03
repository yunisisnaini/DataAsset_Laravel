<section class="content">
    <div class="container-fluid">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title"><b>DATA ASSET TANAH</b></h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
                <a class="btn btn-info" href="tanah/create"><i class="fa fa-plus-circle" style="margin-right: 10px;"></i>Tambah Data</a>
                <br></br>
                <div class="table-responsive">
                    <table id="example1_tanah" class="table table-bordered table-striped text-center">
                        <thead>
                            <tr>
                                <th rowspan="3">No</th>
                                <th rowspan="3">Jenis Barang</th>
                                <th rowspan="3">Luas(m²)</th>
                                <th rowspan="3">Letak/Alamat</th>
                                <th colspan="3">Status Tanah</th>
                                <th rowspan="3">Penggunaan</th>
                                <th rowspan="3">Asal-Usul</th>
                                <th rowspan="3">Harga(Rp)</th>
                                <th rowspan="3">Keterangan</th>
                                <th rowspan="3">File</th>
                                <th rowspan="3">Action</th>
                            </tr>
                            <tr>
                                <th rowspan="2">Hak</th>
                                <th colspan="2">Sertif</th>
                            </tr>
                            <tr>
                                <th>Tanggal</th>
                                <th>Nomor</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($tanah as $data)
                            <tr>
                                <td>{{ $loop->iteration }}</td>
                                <td>{{ $data->jenis_barang }}</td>
                                <td>{{ $data->luas }}</td>
                                <td>{{ $data->letak_alamat }}</td>
                                <td>{{ $data->hak }}</td>
                                <td>{{ $data->tanggal }}</td>
                                <td>{{ $data->nomor }}</td>
                                <td>{{ $data->penggunaan }}</td>
                                <td>{{ $data->asal_usul }}</td>
                                <td>{{ $data->harga }}</td>
                                <td>{{ $data->keterangan }}</td>
                                <td>{{ $data->file_pdf }}</td>
                                <td style="display: flex;">
                                    <a id="confirmDelete" href="{{ route('tanah.delete', ['id' => $data->id]) }}" class="btn btn-danger delete-btn" data-id="{{ $data->id }}">Hapus</a>
                                    <a class="btn btn-info" href="{{ route('tanah.edit', ['id' => $data->id]) }}" style="margin-right: 5px;"><i class="fa fa-edit"></i> </a>
                                    <a href="{{ route('tanah.download', ['id' => $data->id]) }}" class="btn btn-success"><i class="fa fa-download"></i> </a>
                                </td>
                            </tr>
                            <!--modal konfirmasi hapus data-->
                            <div class="modal fade" id="deleteModal-{{ $data->id }}" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="deleteModalLabel">Konfirmasi Hapus Data</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            Apakah Anda yakin ingin menghapus data ini?
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
                                            <a id="confirmDelete" href="{{ route('tanah.delete', ['id' => $data->id]) }}" class="btn btn-danger delete-btn" data-id="{{ $data->id }}">Hapus</a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <script>
                                $(document).ready(function() {
                                    // Tangkap event klik pada tombol konfirmasi delete pada tabel
                                    $('.delete-btn').on('click', function(e) {
                                        e.preventDefault(); // Untuk mencegah aksi default tombol
                                        var id = $(this).data('id');
                                        // Set action URL pada form modal
                                        $('#confirmDelete').attr('href', '/tanah/' + id + '/delete');
                                        $('#deleteModal-' + id).modal('show');
                                    });
                                });
                            </script>
                            @endforeach
                        </tbody>
                    </table>
                </div>
                <!-- /.card-body -->
            </div>
            <!-- /.card -->
        </div>
    </div>
</section>