@extends('services.layout')
@section('service')


<div>
    <section
        id="show"
        style="
          min-height: 500px;
          background-image: url({{ $services->image_url }});
          background-repeat: no-repeat !important;
          background-position: center center;
          background-size: cover;"
        
      >
        <div class="container d-flex align-items-center">
          <div>
            <h1 class="logo text-danger">
              Medico
            </h1>
            <h4 class="slogan">Your best care begins with us...</h4>
            <br />
            <h1 class="text-danger tw-bold">{{ $services->service_name }}</h1>
            <ul>
              <li>
                <h4>{{ $services->sub_service1 }}</h4>
              </li>
              <li>
                <h4>{{ $services->sub_service2 }}</h4>
              </li>
              <li>
                <h4>{{ $services->sub_service3 }}</h4>
              </li>
              <li>
                <h4>{{ $services->sub_service4 }}</h4>
              </li>
            </ul>
          </div>
        </div>
      </section>
      <section class="container py-5 my-5">
        <div class="align-items-center row">
          <div class="col-md-7" sm={12} md={7}>
            <div class="slogan">
              <h1 class="text-success">{{ $services->service_name }}</h1>
              <h5 class="text-secondary">{{ $services->detail1 }}</h5>
              <br />
              <h5 class="text-secondary">{{ $services->detail2 }}</h5>
              <br />
              <button class="btn btn-outline-info">
                Call 543-837-2436
              </button>
            </div>
            <div class="pt-5">
              <h1>Immediate Care</h1>
              <p>
                If you're sick or injured and your primary care office isn't
                open, we're here when you need us, with walk-in appointments and
                outstanding customer service.
              </p>
              <button class="btn btn-outline-info mb-2">
                See locations
              </button>
            </div>
          </div>
          <div class="col-md-5">
            <div>
                <a href="{{ url('/service/' . $services->id . '/edit') }}" title="Edit Student"><button class="px-2 btn btn-primary">Update Service</button></a>
                 <form method="POST" action="{{ url('/service' . '/' . $services->id) }}" accept-charset="UTF-8" style="display:inline">
                    {{ method_field('DELETE') }}
                    {{ csrf_field() }}
                    <button type="submit" class="btn btn-danger px-2" title="Delete Contact" onclick="return confirm(&quot;Confirm delete?&quot;)">Delete Service</button>
                </form>
            </div>
            <div class="p-4 bgBlue mt-5 d-flex">
              <div class="imgIcon me-4">
                <i class="fa fa-phone text-danger" aria-hidden="true"></i>
              </div>
              <div class="text-light">
                <h3 class="text-success fw-bold">Emergency Cases</h3>
                <p>+003856543746</p>
              </div>
            </div>
          </div>
        </div>
      </section>
</div>
@stop