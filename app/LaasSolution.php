<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LaasSolution extends Model
{
    public function appsCategory(){
        return $this->belongsTo('App\Application','apps_id','id');
    }
    public function appsPlan(){
        return $this->hasMany('App\Application','apps_id','id');
    }

    public function laasCategory(){
        return $this->belongsTo('App\Application','apps_id','id');
    }
}