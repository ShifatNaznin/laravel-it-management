<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Application_view extends Model
{
    public function applicationCategory(){
        return $this->belongsTo('App\Application','application_id','id');
    }
    public function applicationPlan(){
        return $this->hasMany('App\Application_view','application_id','id');
    }
}