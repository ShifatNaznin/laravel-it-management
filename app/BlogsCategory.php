<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class BlogsCategory extends Model
{
    public function blogsPlan(){
        return $this->hasMany('App\Blogs','category_id','id');
    }
}