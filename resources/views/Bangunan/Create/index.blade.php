@extends('layouts.backend-dashboard.app')
@section('title','Tambah Data Bangunan')
@section('content')
    @include('Bangunan.Create.html')
@endsection

@section('extra_javascript')
    @include('Bangunan.Create.javascript')
@endsection