@extends('services.layout')
@section('service')
<div class="container py-5">
  <form action="{{ url('service/' .$services->id) }}" method="post">
        {!! csrf_field() !!}
        @method("PATCH")
        <input type="hidden" name="id" id="id" value="{{$services->id}}" id="id" />
        <label class="fw-bold">Service Name</label></br>
        <input type="text" name="service_name" id="service_name" value="{{$services->service_name}}" class="form-control"></br>
        <label class="fw-bold">Sub Service 1</label></br>
        <input type="text" name="sub_service1" id="sub_service1" value="{{$services->sub_service1}}" class="form-control"></br>
        <label class="fw-bold">Sub Service 2</label></br>
        <input type="text" name="sub_service2" id="sub_service2" value="{{$services->sub_service2}}" class="form-control"></br>
        <label class="fw-bold">Sub Service 3</label></br>
        <input type="text" name="sub_service3" id="sub_service3" value="{{$services->sub_service3}}" class="form-control"></br>
        <label class="fw-bold">Sub Service 4</label></br>
        <input type="text" name="sub_service4" id="sub_service4" value="{{$services->sub_service4}}" class="form-control"></br>
        <label class="fw-bold">Image URL</label></br>
        <input type="text" name="image_url" id="image_url" value="{{$services->image_url}}" class="form-control"></br>
        <label class="fw-bold">Detail 1</label></br>
        <textarea type="text" name="detail1" id="detail1" value="{{$services->detail1}}" class="form-control">{{$services->detail1}}</textarea></br>
        <label class="fw-bold">Detail 2</label></br>
        <textarea type="text" name="detail2" id="detail2" value="{{$services->detail2}}" class="form-control">{{$services->detail2}}</textarea></br>
        <input type="submit" value="Save" class="btn btn-success"></br>
    </form>
</div>
@stop