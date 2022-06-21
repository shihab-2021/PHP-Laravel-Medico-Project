@extends('services.layout')
@section('service')
<div class="container">
    <h1 class="heading text-success text-center pt-5">
      OUR SERVICES
    </h1>
    <div class="container">
        <a href="/service/create" class="btn btn-success my-5">Add Services</a>
      <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-5 pb-5">
        @foreach($services as $item)
          <div class="col">
            <div class="card mb-3 shadow" style="minHeight: 630px;">
                <img class="card-img-top product-image" src="{{ $item['image_url'] }}" alt="..." />
                <div class="card-body">
                    <h4 class="card-title text-primary">{{ $item->service_name }}</h4>
                    <br />
                    <h5>Facilities :</h5>
                    <ul class="text-secondary">
                      <li>{{ $item->sub_service1 }}</li>
                      <li>{{ $item->sub_service2 }}</li>
                      <li>{{ $item->sub_service3 }}</li>
                      <li>{{ $item->sub_service4 }}</li>
                    </ul>
                </div>
                <div class="card-footer">
                <a
                href="{{ url('/service/' . $item->id) }}" class="btn btn-outline-primary"><i class="fa fa-info-circle" aria-hidden="true"></i> Detail
                </a>
                </div>
            </div>
</div>
        @endforeach
      </div>
    </div>
</div>
@stop