<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Blogs extends Model
{
    public function blogsCategory(){
        return $this->belongsTo('App\BlogsCategory','category_id','id');
    }
    public function blogsPlan(){
        return $this->hasMany('App\BlogsCategory','id','category_id');
    }
}