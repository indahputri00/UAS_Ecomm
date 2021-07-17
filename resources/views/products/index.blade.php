@extends('layouts.app')

@section ('content')

<div class="container p-0">
  <div class="row">

    <div class="col-lg-3 col-md-3 col-sm-4 col-5 pl-4 filter">
      <div class="fixedfilter">

        <h3><i class="fa fa-filter"></i> Filter </h3>
        <input class="mt-3" type="text" id="search" placeholder="Cari produk" style="width:100%;">

        <div class="filtergender card">
          <div class="card-body">
            <h5 class="card-title">Jenis</h5>
            @foreach ($genders as $genders)
              <input type="checkbox" id="{{ $genders['gender'] }}" class="gender selector" name="gender" value="{{ $genders['gender'] }}" >
              <label for="{{ $genders['gender'] }}">{{ $genders['gender'] }}</label><br>
            @endforeach
          </div>
        </div>


      </div>
    </div>
    <div class="col-lg-9 col-md-9 col-sm-8 col-7 pr-4">
      <h3>Produk</h3>
      
      <div class="row d-flex justify-content-start" id="products">
        
      </div>

    </div>

  </div>
</div>



@endsection