<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Service;
use App\Models\User;
use Illuminate\Support\Facades\Session;
use App\Http\Controllers\CustomAuthController;

class ServiceController extends Controller
{
    public function home(){
        $serv = Service::all();
        $services = $serv->slice(0, 6);
        $data = array();
        if (Session::has('loginId')) {
            $data = User::where('id', '=', Session::get('loginId'))->first();
        }
        return view('welcome', compact('data'))->with('services', $services);
    }

    public function index(){
        $services = Service::all();
        $data = array();
        if (Session::has('loginId')) {
            $data = User::where('id', '=', Session::get('loginId'))->first();
        }
        return view('services.index', compact('data'))->with('services', $services);
    }

    public function create(){
        $data = array();
        if (Session::has('loginId')) {
            $data = User::where('id', '=', Session::get('loginId'))->first();
        }
        return view('services.create', compact('data'));
    }

    public function store(Request $request){
        $data = array();
        if (Session::has('loginId')) {
            $data = User::where('id', '=', Session::get('loginId'))->first();
        }
        $input = $request->all();
        Service::create($input);
        return redirect('service')->with('flash_message', 'Service Added!');
    }

    public function show($id){
        $data = array();
        if (Session::has('loginId')) {
            $data = User::where('id', '=', Session::get('loginId'))->first();
        }
        $service = Service::find($id);
        return view('services.show', compact('data'))->with('services', $service);
    }

    public function edit($id)
    {
        $data = array();
        if (Session::has('loginId')) {
            $data = User::where('id', '=', Session::get('loginId'))->first();
        }
        $service = Service::find($id);
        return view('services.edit', compact('data'))->with('services', $service);
    }

    public function update(Request $request, $id){
        $data = array();
        if (Session::has('loginId')) {
            $data = User::where('id', '=', Session::get('loginId'))->first();
        }
        $service = Service::find($id);
        $input = $request->all();
        $service->update($input);
        return redirect('service')->with('flash_message', 'Service Updated!');
    }

    public function destroy($id){
        Service::destroy($id);
        $data = array();
        if (Session::has('loginId')) {
            $data = User::where('id', '=', Session::get('loginId'))->first();
        }
        return redirect('service')->with('flash_message', 'Service Deleted!');
    }
}
