<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    public function prodCategory(){
        return $this->belongsTo('App\Category','category_id','id');
    }
    public function prodSubCategory(){
        return $this->belongsTo('App\SubCategory','sub_category_id','id');
    }
    public function prodUnit(){
        return $this->belongsTo('App\Unit','product_unit','id');
    }
    public function Category(){
        return $this->belongsTo(Category::class);
    }
    public function SubCategory(){
        return $this->belongsTo(SubCategory::class);
    }

    
}