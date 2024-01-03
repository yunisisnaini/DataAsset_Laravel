@extends('layouts.backend-dashboard.app')
@section('title','Edit Data Asset Bangunan')
@section('content')
    @include('Bangunan.Edit.html')
@endsection

@section('extra_javascript')
    @include('Bangunan.Edit.javascript')
@endsection