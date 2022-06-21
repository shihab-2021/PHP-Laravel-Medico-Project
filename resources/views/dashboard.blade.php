@extends('interface.layouts.main')

@section('main-content')

<div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <h4>Welcome to dashboard</h4>
                <hr>
                <table class="table">
                    <thead>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Action</th>
                    </thead>
                    <tbody>
                        <tr>
                            <td>{{$data->name}}</td>
                            <td>{{$data->email}}</td>
                            <td><a href="logout">Logout</a></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
</div>
@endsection