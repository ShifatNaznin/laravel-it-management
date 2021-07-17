<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Apps_view extends Model
{
    public function appsCategory(){
        return $this->belongsTo('App\Apps','apps_id','id');
    }
    public function appsPlan(){
        return $this->hasMany('App\Apps_view','apps_id','id');
    }
}