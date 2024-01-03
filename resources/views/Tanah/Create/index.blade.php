@extends('layouts.backend-dashboard.app')
@section('title','Tambah Data Asset Tanah')
@section('content')
@include('Tanah.Create.html')
@endsection

@section('extra_javascript')
@include('Tanah.Create.javascript')
@endsection