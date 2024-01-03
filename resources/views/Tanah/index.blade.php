@extends('layouts.backend-dashboard.app')
@section('title','Data Tanah')
@section('content')
    @include('Tanah.html')
@endsection

@section('extra_javascript')
    @include('Tanah.javascript')
@endsection