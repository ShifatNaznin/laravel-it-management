<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Service_view extends Model
{
    public function serviceCategory(){
        return $this->belongsTo('App\Service','service_id','id');
    }
    public function servicePlan(){
        return $this->hasMany('App\Service_view','service_id','id');
    }
}