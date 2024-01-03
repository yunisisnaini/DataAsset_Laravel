<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Storage;
use Illuminate\Http\Response;
use Illuminate\Http\Request;
use App\Models\Tanah;

class TanahController extends Controller
{
    public function getDataTanah()
    {
        $tanah = Tanah::all();
        return view('tanah.index', ['tanah' => $tanah]);
    }

    public function showCreateTanah()
    {
        return view('Tanah.Create.index');
    }

    public function edit($id)
    {
        $tanah = Tanah::findOrFail($id);
        return view('Tanah.Edit.index', compact('tanah'));
    }

    public function store(Request $request)
    {
        // Simpan data ke database
        $tanah = new Tanah;
        $tanah->jenis_barang = $request->jenis_barang;
        $tanah->luas = $request->luas;
        $tanah->hak = $request->hak;
        $tanah->tanggal = $request->tanggal;
        $tanah->nomor = $request->nomor;
        $tanah->penggunaan = $request->penggunaan;
        $tanah->asal_usul = $request->asal_usul;
        $tanah->harga = $request->harga;
        $tanah->keterangan = $request->keterangan;
        $tanah->letak_alamat = $request->letak_alamat;

        // Unggah file PDF jika diisi
        if ($request->hasFile('file_pdf')) {
            $file = $request->file('file_pdf');
            $filename = $file->getClientOriginalName();
            $file->move(public_path('uploads'), $filename);
            $tanah->file_pdf = $filename;
        }
        $tanah->save();

        // Redirect atau berikan respons ke frontend
        return redirect('/tanah')->with('success', 'Data tanah berhasil disimpan.');
    }

    public function delete($id)
    {
        // Temukan data tanah berdasarkan ID
        $tanah = Tanah::findOrFail($id);

        // Hapus file PDF dari penyimpanan
        if (Storage::disk('public')->exists('uploads/' . $tanah->file_pdf)) {
            Storage::disk('public')->delete('uploads/' . $tanah->file_pdf);
        }

        // Hapus data tanah dari database
        $tanah->delete();

        // Redirect atau berikan respons ke frontend
        return redirect('/tanah')->with('success', 'Data tanah berhasil dihapus.');
    }

    public function update(Request $request, $id)
    {
        // Setel nilai-naili model berdasarkan input formulir
        $tanah = Tanah::findOrFail($id);
        $tanah->jenis_barang = $request->input('jenis_barang');
        $tanah->luas = $request->input('luas');
        $tanah->hak = $request->input('hak');
        $tanah->tanggal = $request->input('tanggal');
        $tanah->nomor = $request->input('nomor');
        $tanah->penggunaan = $request->input('penggunaan');
        $tanah->asal_usul = $request->input('asal_usul');
        $tanah->harga = $request->input('harga');
        $tanah->keterangan = $request->input('keterangan');
        $tanah->letak_alamat = $request->input('letak_alamat');

        // Jika ada file yang diunggah, simpan file baru dan hapus file lama
        if ($request->hasFile('file_pdf')) {
            $file = $request->file('file_pdf');
            $filename = $file->getClientOriginalName();
            $file->move(public_path('uploads'), $filename);
            $this->hapusFile($tanah->file_pdf);
            $tanah->file_pdf = $filename;
        }

        // Hapus file jika tombol hapus_file diaktifkan
        if ($request->input('hapus_file') == "1") {
            $this->hapusFile($tanah->file_pdf);
            $tanah->file_pdf = null; // Atau sesuaikan dengan logika Anda
        }

        // Simpan model ke dalam database
        $tanah->save();

        // Redirect atau berikan respons ke frontend
        return redirect('/tanah')->with('success', 'Data tanah berhasil diupdate');
    }

    protected function hapusFile($filename)
    {
        $filePath = public_path('uploads/' . $filename);

        // Periksa apakah file ada sebelum dihapus
        if (file_exists($filePath) && !is_dir($filePath)) {
            unlink($filePath); // Hapus file
        }
    }

    public function download($id)
    {
        // Temukan data tanah berdasarkan ID
        $tanah = Tanah::find($id);

        if (!$tanah || !$tanah->file_pdf) {
            return redirect()->back()->with('error', 'File PDF tidak tersedia untuk data tanah ini.');
        }

        // Path lengkap ke file PDF
        $filePath = public_path('uploads/' . $tanah->file_pdf);

        // Periksa apakah file PDF tersedia
        if (file_exists($filePath)) {
            // File PDF tersedia, lakukan download
            return response()->download($filePath, $tanah->file_pdf);
        } else {
            // File PDF tidak tersedia, berikan respons yang sesuai
            // Misalnya, arahkan kembali ke halaman sebelumnya dengan pesan
            return redirect()->back()->with('error', 'File PDF tidak tersedia.');
        }
    }
}
