<section class="content">
  <div class="container-fluid">
    <div class="card card-secondary">
      <div class="card-header">
        <h3 class="card-title"><b>Tambah Data Asset Tanah</b></h3>
      </div>
      <!-- /.card-header -->
      <div class="card-body">
        <form method='post' action="{{ route('tanah.store') }}" enctype="multipart/form-data">
          @csrf
          <div class="row">
            <div class="col-sm-6">
              <!-- text input -->
              <div class="form-group">
                <label>Jenis Barang</label>
                <input type="text" class="form-control" placeholder="Jenis Barang" name='jenis_barang'>
                <input type="text" class="form-control" placeholder="Jenis Barang" name='id' hidden>
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                <label>Luas(m²)</label>
                <input type="text" class="form-control" placeholder="Luas(m²)" name='luas'>
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                <label>Hak</label>
                <select type="text" class="custom-select" placeholder="Hak" name='hak'>
                  <option value="" selected></option>
                  <option value="Hak Milik">Hak Milik</option>
                  <option value="Hak Pakai">Hak Pakai</option>
                </select>
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                <label>Tanggal</label>
                <input type="date" class="form-control" placeholder="Tanggal" name='tanggal'>
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
                <label>Penggunaan</label>
                <input type="text" class="form-control" placeholder="Penggunaan" name='penggunaan'>
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
                <label>Harga(Rp)</label>
                <input type="text" class="form-control" placeholder="Harga(Rp)" name='harga'>
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
                <textarea class="form-control" placeholder="Letak/Alamat" name='letak_alamat'></textarea>
              </div>
            </div>

            <div class="col-sm-6" action="{{ route('tanah.store') }}" method="post" enctype="multipart/form-data">
              <input type="hidden" name="id">
              <!-- Tambahkan input untuk mengunggah file PDF -->
              <label for="file_pdf">Unggah File</label>
              <input type="file" name="file_pdf" class="form-control" style="margin-bottom: 20px;" id="file_pdf">
            </div>
          </div>

          <button type="button" class="btn btn-secondary" id="closeModalButton">Kembali</button>
          <button type="submit" class="btn btn-primary">Simpan</button>

          <script>
            document.getElementById("closeModalButton").addEventListener("click", function() {
              window.location.href = "http://127.0.0.1:8000/tanah";
            });
          </script>

        </form>
      </div>
      <!-- /.card-body -->
    </div>
  </div>
</section>