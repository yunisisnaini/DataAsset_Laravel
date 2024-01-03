<section class="content">
  <div class="container-fluid">
    <div class="card card-secondary">
      <div class="card-header">
        <h3 class="card-title"><b>Edit Data Asset Tanah</b></h3>
      </div>
      <!-- /.card-header -->
      <div class="card-body">
        <form method='post' action="{{ route('tanah.update', $tanah->id) }}" enctype="multipart/form-data">
          @method('PUT') <!-- atau @method('PATCH') -->
          @csrf
          <div class="row">
            <div class="col-sm-6">
              <!-- text input -->
              <div class="form-group">
                <label>Jenis Barang</label>
                <input type="text" class="form-control" placeholder="Jenis Barang" name='jenis_barang' value="{{ $tanah->jenis_barang }}">
                <input type="text" class="form-control" placeholder="Jenis Barang" name='id' hidden>
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                <label>Luas(m²)</label>
                <input type="text" class="form-control" placeholder="Luas(m²)" name='luas' value="{{ $tanah->luas }}">
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                <label>Hak</label>
                <select type="text" class="custom-select" name='hak'>
                  <option value=""></option>
                  <option value="Hak Milik" {{ $tanah->hak == "Hak Milik" ? 'selected' : '' }}>Hak Milik</option>
                  <option value="Hak Pakai" {{ $tanah->hak == "Hak Pakai" ? 'selected' : '' }}>Hak Pakai</option>
                </select>
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                <label>Tanggal</label>
                <input type="date" class="form-control" placeholder="Tanggal" name='tanggal' value="{{ $tanah->tanggal }}">
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                <label>Nomor</label>
                <input type="text" class="form-control" placeholder="Nomor" name='nomor' value="{{ $tanah->nomor }}">
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                <label>Penggunaan</label>
                <input type="text" class="form-control" placeholder="penggunaan" name='penggunaan' value="{{ $tanah->penggunaan }}">
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                <label>Asal-Usul</label>
                <input type="text" class="form-control" placeholder="Asal-Usul" name='asal_usul' value="{{ $tanah->asal_usul }}">
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                <label>Harga(Rp)</label>
                <input type="text" class="form-control" placeholder="Harga(Rp)" name='harga' value="{{ $tanah->harga }}">
              </div>
            </div>
            <!-- textarea -->
            <div class="col-sm-6">
              <div class="form-group">
                <label>Keterangan</label>
                <textarea class="form-control" placeholder="keterangan" name="keterangan">{{ $tanah->keterangan }}</textarea>
              </div>
            </div>

            <div class="col-sm-6">
              <div class="form-group">
                <label>Letak/Alamat</label>
                <textarea class="form-control" placeholder="Letak/Alamat" name='letak_alamat'>{{ $tanah->letak_alamat }}</textarea>
              </div>
            </div>

            <div class="col-sm-6">
              <!-- Tambahkan input untuk mengunggah file PDF -->
              <label for="file_pdf">Unggah File</label>
              <input type="file" name="file_pdf" class="form-control" style="margin-bottom: 5px;" id="file_pdf">
              <span id="selectedFileName">
                <b>
                  @if($tanah->file_pdf)
                  File yang tersimpan: {{ $tanah->file_pdf }}
                  @else
                  Tidak ada file yang tersimpan
                  @endif
                </b>
            </div>
          </div>

          <div class="row">
            <div class="col-sm-6 d-flex" style="margin-top: 20px;">
              <button type="button" class="btn btn-secondary" style="margin-right: 5px;" id="closeModalButton">Kembali</button>
              <button type="submit" class="btn btn-primary" style="margin-right: 5px;">Simpan</button>

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