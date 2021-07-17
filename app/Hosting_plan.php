<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Hosting_plan extends Model
{
    public function hostingCategory(){
        return $this->belongsTo('App\hosting','hosting_id','id');
    }
    public function hostingPlan(){
        return $this->hasMany('App\Hosting_plan','hosting_id','id');
    }
}