<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cybersecurity extends Model
{
    public function laasCategory(){
        return $this->belongsTo('App\LaasSolution','apps_id','id');
    }
}
