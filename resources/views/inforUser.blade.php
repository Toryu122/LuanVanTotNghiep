@extends('components.home.header')
@include('cdn')
@section('content')
    
        @if (session()->has('message'))
            <div class="alert alert-success">
                {{ session()->get('message') }}
            </div>
        @endif
        <div class="card">
            <h5 class="card-header">Thông tin sản phẩm</h5>
            <div class="table-responsive text-nowrap">
              <a >Tên tài khoản:{{ $user->name }} </a>  
              <a>Mail:{{ $user->email }} </a> 
              <a>Thời gian tạo:{{ $user->created_at }} </a> 
              <a>Thời gian sửa:{{ $user->updated_at }} </a> 
            </div>
        </div>
       
       
@endsection
