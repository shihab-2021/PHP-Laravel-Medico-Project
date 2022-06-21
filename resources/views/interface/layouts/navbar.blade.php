<div class="">
  <div class="navbar navbar-expand-lg" >
    <div class="container">
        <a class="navbar-brand tw-bold logo" href="/">
            <h2 class="text-danger">Medico</h2>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item d-flex align-items-center">
            <a class="nav-link fs-6" aria-current="page" href="/">Home</a>
            </li>
            <li class="nav-item d-flex align-items-center">
            <a class="nav-link fs-6" href="/dashboard">Dashboard</a>
            </li>
            <li class="nav-item d-flex align-items-center">
            <a class="nav-link fs-6" href="/service">Services</a>
            </li>
            <li class="nav-item d-flex align-items-center">
            <a class="nav-link fs-6"><i class="fa fa-phone" aria-hidden="true"></i>Call
                  543-837-2436</a>
            </li>
            @if (Session::has('loginId'))
            <li class="nav-item d-flex align-items-center">
            <a class="nav-link active text-warning mx-2 px-2 py-1 fs-6 fw-semibold">{{$data->name}}</a>
            </li>
            <li class="nav-item d-flex align-items-center">
            <a class="nav-link fs-6 fw-semibold" href="logout"><button class="btn btn-danger m-0 px-2 py-1">
              Sign Out
            </button></a>
            </li>
            @endif
            @if (!Session::has('loginId'))
            <li class="nav-item d-flex align-items-center">
            <a class="nav-link" href="login"><button class="btn btn-primary px-2 py-1">
              Sign In
            </button></a>
            </li>
            <li class="nav-item d-flex align-items-center">
            <a class="nav-link" href="registration"><button class="btn btn-info px-2 py-1">
              Sign Up
            </button></a>
            </li>
            @endif
        </ul>
        </div>
    </div>
  </div>
</div>