<section class="content">
  <div class="container-fluid">
    <div class="card card-secondary">
      <div class="card-header">
        <h3 class="card-title"><b>Tambah Data Asset Gedung & Bangunan</b></h3>
      </div>
      <!-- /.card-header -->
      <div class="card-body">
        <form method='post' action="{{ route('bangunan.store') }}" enctype="multipart/form-data">
          @csrf
          <div class="row">
            <div class="col-sm-6">
              <!-- text input -->
              <div class="form-group">
                <label>Jenis Barang/Nama Barang</label>
                <input type="text" class="form-control" placeholder="Jenis Barang/Nama Barang" name='jenis_barang'>
                <input type="text" class="form-control" placeholder="Jenis Barang/Nama Barang" name='id' hidden>
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                <label>Kode Barang</label>
                <input type="text" class="form-control" placeholder="Kode Barang" name='kode_barang'>
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                <label>Register</label>
                <input type="text" class="form-control" placeholder="Register" name='register'>
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                <label>Tingkat</label>
                <select type="text" class="custom-select" placeholder="Tingkat" name='tingkat_bangunan'>
                  <option value=""></option>
                  <option value="Ya">Ya</option>
                  <option value="Tidak">Tidak</option>
                </select>
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                <label>Beton</label>
                <select type="text" class="custom-select" placeholder="Beton" name='beton_bangunan'>
                  <option value=""></option>
                  <option value="Ya">Ya</option>
                  <option value="Tidak">Tidak</option>
                </select>
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                <label>Luas Lantai(m²)</label>
                <input type="text" class="form-control" placeholder="Luas Lantai(m²)" name='luas_lantai'>
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                <label>Tanggal</label>
                <input type="date" class="form-control" name='tanggal'>
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                <label>Nomor</label>
                <input type="text" class="form-control" placeholder="Nomor" name='nomor'>
              </div>
            </div>

            <div class="col-sm-6">
              <div class="form-group">
                <label>Luas(m²)</label>
                <input type="text" class="form-control" placeholder="Luas(m²)" name="luas_tanah">
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                <label>Status</label>
                <select type="text" class="custom-select" placeholder="Status" name='status_tanah'>
                  <option value=""></option>
                  <option value="Hak Milik">Hak Milik</option>
                  <option value="Hak Pakai">Hak Pakai</option>
                </select>
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                <label>Asal-Usul</label>
                <input type="text" class="form-control" placeholder="Asal-Usul" name='asal_usul'>
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                <label>Kode</label>
                <input type="text" class="form-control" placeholder="Kode" name='kode_tanah'>
              </div>
            </div>

            <!-- textarea -->
            <div class="col-sm-6">
              <div class="form-group">
                <label>Keterangan</label>
                <textarea class="form-control" placeholder="Keterangan" name="keterangan"></textarea>
              </div>
            </div>

            <div class="col-sm-6">
              <div class="form-group">
                <label>Letak/Alamat</label>
                <textarea class="form-control" placeholder="Letak/Alamat" name='alamat'></textarea>
              </div>
            </div>

            <div class="col-sm-6">
              <div class="form-group">
                <!-- Tambahkan input untuk mengunggah file PDF -->
                <label for="file_pdf">Unggah File</label>
                <input type="file" name="file_pdf" class="form-control" style="margin-bottom: 5px;" id="file_path">
              </div>
            </div>
            <div class="col-sm-6">
              <label>Harga(Rp)</label>
              <input type="text" class="form-control" placeholder="Harga(Rp)" name='harga'>
            </div>
          </div>

          <div class="row">
            <div class="col-sm-6">
              <button type="button" class="btn btn-secondary" style="margin-top: 20px;" id="closeModalButton">Kembali</button>
              <button type="submit" class="btn btn-primary" style="margin-top: 20px;">Simpan</button>

              <script>
                document.getElementById("closeModalButton").addEventListener("click", function() {
                  window.location.href = "http://127.0.0.1:8000/bangunan";
                });
              </script>
        </form>
      </div>
      <!-- /.card-body -->
    </div>
  </div>
</section>