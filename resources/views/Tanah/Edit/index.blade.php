@extends('layouts.backend-dashboard.app')
@section('title','Edit Data Asset Tanah')
@section('content')
@include('Tanah.Edit.html')
@endsection

@section('extra_javascript')
@include('Tanah.Edit.javascript')
@endsection