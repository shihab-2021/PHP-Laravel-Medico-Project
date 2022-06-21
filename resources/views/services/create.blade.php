@extends('services.layout')
@section('service')
<div class="container py-5">
  <div class="card">
  <div class="card-header">Please give service information</div>
  <div class="card-body">
      
      <form action="{{ url('service') }}" method="post">
        {!! csrf_field() !!}
        <label class="fw-bold">Service Name</label></br>
        <input type="text" name="service_name" id="service_name" class="form-control"></br>
        <label class="fw-bold">Sub Service 1</label></br>
        <input type="text" name="sub_service1" id="sub_service1" class="form-control"></br>
        <label class="fw-bold">Sub Service 2</label></br>
        <input type="text" name="sub_service2" id="sub_service2" class="form-control"></br>
        <label class="fw-bold">Sub Service 3</label></br>
        <input type="text" name="sub_service3" id="sub_service3" class="form-control"></br>
        <label class="fw-bold">Sub Service 4</label></br>
        <input type="text" name="sub_service4" id="sub_service4" class="form-control"></br>
        <label class="fw-bold">Image URL</label></br>
        <input type="text" name="image_url" id="image_url" class="form-control"></br>
        <label class="fw-bold">Detail 1</label></br>
        <textarea type="text" name="detail1" id="detail1" class="form-control"></textarea></br>
        <label class="fw-bold">Detail 2</label></br>
        <textarea type="text" name="detail2" id="detail2" class="form-control"></textarea></br>
        <input type="submit" value="Save" class="btn btn-primary px-4"></br>
    </form>
   
  </div>
</div>
</div>
@stop