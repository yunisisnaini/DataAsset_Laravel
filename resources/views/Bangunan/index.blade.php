@extends('layouts.backend-dashboard.app')
@section('title','Data Bangunan')
@section('content')
    @include('Bangunan.html')
@endsection

@section('extra_javascript')
    @include('Bangunan.javascript')
@endsection