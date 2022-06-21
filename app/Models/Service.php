<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Service extends Model
{
    protected $table = 'services';
    protected $primaryKey = 'id';
    protected $fillable = ['service_name', 'sub_service1', 'sub_service2', 'sub_service3', 'sub_service4', 'image_url', 'detail1', 'detail2' ];
}
