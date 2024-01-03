<section class="content">
    <div class="container-fluid">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title"><b>DATA ASSET TANAH</b></h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
                <div class="table-action-container">
                    <a class="btn btn-info" href="tanah/create"><i class="fa fa-plus-circle" style="margin-right: 10px;"></i>Tambah Data</a>
                    <button class="btn btn-danger" onclick="exportToPDF()"><i class="fa fa-file-pdf"></i> Unduh PDF</button>
                    <button class="btn btn-success" onclick="exportToExcel()"><i class="fa fa-file-excel"></i> Unduh Excel</button>
                    <button class="btn btn-secondary" onclick="printTable()"><i class="fa fa-print"></i> Print</button>
                </div>
                <div class="table-responsive" style="margin-top: 20px;">
                    <table id="example" class="table table-bordered table-striped text-center">
                        <thead>
                            <style>
                                /* CSS untuk menyembunyikan kolom saat ekspor PDF dan Excel */
                                .pdf-export .file-column,
                                .excel-export .file-column,
                                .pdf-export .action-column,
                                .excel-export .action-column {
                                    display: none !important;
                                }

                                /* CSS untuk menyembunyikan kolom saat mencetak */
                                @media print {

                                    .file-column,
                                    .action-column {
                                        display: none !important;
                                    }
                                }
                            </style>
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
                                <th rowspan="3" class="file-column">File</th>
                                <th rowspan="3" class="action-column">Action</th>
                            </tr>
                            <tr>
                                <th rowspan="2">Hak</th>
                                <th colspan="2">Sertif</th>
                            </tr>
                            <tr>
                                <th rowspan="1">Tanggal</th>
                                <th rowspan="1">Nomor</th>
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
                                <td class="action-column">
                                    <a class="btn btn-danger delete-btn" data-toggle="modal" data-target="#deleteModal-{{ $data->id }}" style="margin-bottom: 5px;"><i class="fa fa-trash"></i></a>
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
                                    <a class="btn btn-info" href="{{ route('tanah.edit', ['id' => $data->id]) }}" style="margin-bottom: 5px;"><i class="fa fa-edit"></i> </a>
                                    <a href="{{ route('tanah.download', ['id' => $data->id]) }}" class="btn btn-success" onclick="checkFileAvailability('{{ $data->file_pdf }}')"><i class="fa fa-download"></i> </a>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>

                        <!--modal konfirmasi tidak ada data yang bisa dihapus-->
                        <script>
                            function checkFileAvailability(fileName) {
                                if (!fileName || fileName.trim() === "") {
                                    // Jika nama file kosong, tampilkan popup
                                    showNoFilePopup();
                                }
                            }

                            function showNoFilePopup() {
                                alert("Tidak ada file yang tersedia untuk diunduh.");
                            }
                        </script>

                        <!-- export pdf -->
                        <script>
                            function exportToPDF() {
                                var table = document.getElementById('example');
                                table.classList.add('pdf-export');
                                var pdf = new jsPDF('l', 'mm', 'legal'); // Mengatur ukuran kertas ke mode landscape

                                // Tambahkan AutoTable untuk mengonversi tabel ke PDF
                                pdf.autoTable({
                                    html: '#example',
                                    columnStyles: {
                                        11: { // Sesuaikan dengan indeks kolom "File"
                                            visible: false
                                        },
                                        12: { // Sesuaikan dengan indeks kolom "Action"
                                            visible: false
                                        }
                                    },
                                    margin: {
                                        top: 35 // Menambahkan margin atas agar tidak tumpang tindih dengan judul
                                    },
                                    tableLineColor: [0, 0, 0], // Warna garis tabel (RGB)
                                    tableLineWidth: 0.2, // Lebar garis tabel
                                    styles: {
                                        lineColor: [0, 0, 0], // Warna garis sel (RGB)
                                        lineWidth: 0.2, // Lebar garis sel
                                        fillColor: [255, 255, 255], // Warna latar belakang sel (RGB)
                                        textColor: [0, 0, 0],
                                        halign: 'center'
                                    },
                                });
                                table.classList.remove('pdf-export');
                                // Atur ulang margin agar judul berada di tengah pada halaman pertama
                                pdf.setPage(1);
                                pdf.text("Data Asset Tanah", pdf.internal.pageSize.width / 2, 15, 'center');
                                pdf.text("Dinas Pertanian Perikanan dan Pangan", pdf.internal.pageSize.width / 2, 25, 'center');

                                pdf.save('asset_tanah.pdf');
                            }
                        </script>

                        <!-- export excel -->
                        <script>
                            function exportToExcel() {
                                // Logika untuk export ke Excel
                                var table = document.getElementById('example');
                                table.classList.add('excel-export');
                                var ws = XLSX.utils.table_to_sheet(table, {
                                    origin: 'A4'
                                }); // Memastikan tabel dimulai dari A4

                                // Tambahkan judul ke sheet di atas tabel
                                var title = [
                                    ['Data Asset Tanah'],
                                    ['Dinas Pertanian Perikanan dan Pangan']
                                ];
                                XLSX.utils.sheet_add_aoa(ws, title, {
                                    origin: 'A1' // Pindahkan judul ke baris pertama
                                });

                                // Sesuaikan indeks kolom "File" dan "Action"
                                var columnIndices = [11, 12];

                                // Atur visible: false untuk kolom "File" dan "Action"
                                columnIndices.forEach(function(colIndex) {
                                    if (!ws['!cols']) ws['!cols'] = [];
                                    ws['!cols'][colIndex] = {
                                        hidden: true
                                    };
                                });

                                // Gabungkan sel untuk judul (2 baris)
                                var mergeTitle = [{
                                        s: {
                                            r: 0,
                                            c: 0
                                        },
                                        e: {
                                            r: 0,
                                            c: 15
                                        }
                                    }, // Baris pertama judul
                                    {
                                        s: {
                                            r: 1,
                                            c: 0
                                        },
                                        e: {
                                            r: 1,
                                            c: 15
                                        }
                                    } // Baris kedua judul
                                ];
                                if (!ws['!merges']) ws['!merges'] = [];
                                ws['!merges'] = ws['!merges'].concat(mergeTitle);

                                table.classList.remove('excel-export');
                                var wb = XLSX.utils.book_new();
                                XLSX.utils.book_append_sheet(wb, ws, 'Asset1');

                                XLSX.writeFile(wb, 'asset_tanah.xlsx');
                            }
                        </script>

                        <!-- print -->
                        <script>
                            function printTable() {
                                // Logika untuk mencetak tabel
                                var table = document.getElementById('example');

                                // Sembunyikan kolom "File" dan "Action" dengan memberikan class "noPrint"
                                var hiddenColumns = [11, 12]; // Sesuaikan dengan indeks kolom "File" dan "Action"
                                for (var i = 0; i < table.rows.length; i++) {
                                    for (var j = 0; j < table.rows[i].cells.length; j++) {
                                        if (hiddenColumns.includes(j)) {
                                            table.rows[i].cells[j].classList.add('noPrint');
                                        }
                                    }
                                }

                                var printContents = "<div class='print-title'><h1>Data Asset Tanah</h1><h1>Dinas Pertanian Perikanan dan Pangan</h1></div>";
                                printContents += table.outerHTML;

                                var originalContents = document.body.innerHTML;
                                document.body.innerHTML = printContents;

                                // Tambahkan CSS untuk menyembunyikan kolom "File" dan "Action" selama pencetakan
                                var style = document.createElement('style');
                                style.innerHTML = '@page { size: landscape; } .print-title { text-align: center; margin-bottom: 20px; } .print-title h1 { font-size: 24px; margin-bottom: 5px; } .noPrint { display: none; }';
                                document.head.appendChild(style);

                                window.print();

                                // Hapus CSS dan kembalikan HTML setelah mencetak selesai
                                style.remove();
                                document.body.innerHTML = originalContents;
                            }
                        </script>

                    </table>
                </div>
                <!-- /.card-body -->
            </div>
            <!-- /.card -->
        </div>
    </div>
</section>