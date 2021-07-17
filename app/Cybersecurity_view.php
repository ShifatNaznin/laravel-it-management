<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cybersecurity_view extends Model
{
    public function cybersecurityCategory(){
        return $this->belongsTo('App\Cybersecurity','cybersecurity_id','id');
    }
    public function cybersecurityPlan(){
        return $this->hasMany('App\Cybersecurity_view','cybersecurity_id','id');
    }
}
