<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Storage;
use Illuminate\Http\Response;
use Illuminate\Http\Request;
use App\Models\Bangunan;

class BangunanController extends Controller
{
    public function getDataBangunan()
    {
        $bangunan = Bangunan::all();
        return view('bangunan.index', ['bangunan' => $bangunan]);
    }

    public function showCreateBangunan()
    {
        return view('Bangunan.Create.index');
    }

    public function edit($id)
    {
        $bangunan = Bangunan::findOrFail($id);
        return view('Bangunan.Edit.index', compact('bangunan'));
    }

    public function store(Request $request)
    {
        // Simpan data ke database
        $bangunan = new Bangunan;
        $bangunan->jenis_barang = $request->jenis_barang;
        $bangunan->kode_barang = $request->kode_barang;
        $bangunan->register = $request->register;
        $bangunan->tingkat_bangunan = $request->tingkat_bangunan;
        $bangunan->beton_bangunan = $request->beton_bangunan;
        $bangunan->luas_lantai = $request->luas_lantai;
        $bangunan->alamat = $request->alamat;
        $bangunan->tanggal = $request->tanggal;
        $bangunan->nomor = $request->nomor;
        $bangunan->luas_tanah = $request->luas_tanah;
        $bangunan->kode_tanah = $request->kode_tanah;
        $bangunan->asal_usul = $request->asal_usul;
        $bangunan->status_tanah = $request->status_tanah;
        $bangunan->harga = $request->harga;
        $bangunan->keterangan = $request->keterangan;
        $bangunan->file_pdf = $request->file_pdf;

        // Unggah file PDF jika diisi
        if ($request->hasFile('file_pdf')) {
            $file = $request->file('file_pdf');
            $filename = $file->getClientOriginalName();
            $file->move(public_path('uploads'), $filename);
            $bangunan->file_pdf = $filename;
        }
        $bangunan->save();

        // Redirect atau berikan respons ke frontend
        return redirect('/bangunan')->with('success', 'Data bangunan berhasil disimpan.');
    }

    public function delete($id)
    {
        // Temukan data bangunan berdasarkan ID
        $bangunan = Bangunan::findOrFail($id);

        // Hapus file PDF dari penyimpanan
        if (Storage::disk('public')->exists('uploads/' . $bangunan->file_pdf)) {
            Storage::disk('public')->delete('uploads/' . $bangunan->file_pdf);
        }

        // Hapus data bangunan dari database
        $bangunan->delete();

        // Redirect atau berikan respons ke frontend
        return redirect('/bangunan')->with('success', 'Data bangunan berhasil dihapus.');
    }

    public function update(Request $request, $id)
    {
        // Setel nilai-naili model berdasarkan input formulir
        $bangunan = Bangunan::findOrFail($id);
        $bangunan->jenis_barang = $request->input('jenis_barang');
        $bangunan->kode_barang = $request->input('kode_barang');
        $bangunan->register = $request->input('register');
        $bangunan->tingkat_bangunan = $request->input('tingkat_bangunan');
        $bangunan->beton_bangunan = $request->input('beton_bangunan');
        $bangunan->luas_lantai = $request->input('luas_lantai');
        $bangunan->alamat = $request->input('alamat');
        $bangunan->tanggal = $request->input('tanggal');
        $bangunan->nomor = $request->input('nomor');
        $bangunan->luas_tanah = $request->input('luas_tanah');
        $bangunan->kode_tanah = $request->input('kode_tanah');
        $bangunan->asal_usul = $request->input('asal_usul');
        $bangunan->status_tanah = $request->input('status_tanah');
        $bangunan->harga = $request->input('harga');
        $bangunan->keterangan = $request->input('keterangan');

        // Jika ada file yang diunggah, simpan file baru dan hapus file lama
        if ($request->hasFile('file_pdf')) {
            $file = $request->file('file_pdf');
            $filename = $file->getClientOriginalName();
            $file->move(public_path('uploads'), $filename);
            $this->hapusFile($bangunan->file_pdf);
            $bangunan->file_pdf = $filename;
        }

        // Hapus file jika tombol hapus_file diaktifkan
        if ($request->input('hapus_file') == "1") {
            $this->hapusFile($bangunan->file_pdf);
            $bangunan->file_pdf = null; // Atau sesuaikan dengan logika Anda
        }

        // Simpan model ke dalam database
        $bangunan->save();

        // Redirect atau berikan respons ke frontend
        return redirect('/bangunan')->with('success', 'Data bangunan berhasil diupdate.');
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
        // Temukan data bangunan berdasarkan ID
        $bangunan = Bangunan::find($id);

        if (!$bangunan || !$bangunan->file_pdf) {
            return redirect()->back()->with('error', 'File PDF tidak tersedia untuk data bangunan ini.');
        }

        // Path lengkap ke file PDF
        $filePath = public_path('uploads/' . $bangunan->file_pdf);

        // Periksa apakah file PDF tersedia
        if (file_exists($filePath)) {
            // File PDF tersedia, lakukan download
            return response()->download($filePath, $bangunan->file_pdf);
        } else {
            // File PDF tidak tersedia, berikan respons yang sesuai
            // Misalnya, arahkan kembali ke halaman sebelumnya dengan pesan
            return redirect()->back()->with('error', 'File PDF tidak tersedia.');
        }
    }
}
