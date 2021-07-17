<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ChechkoutForm extends Model
{
    protected $fillable = [
        
        'first_name',
        'last_name',
       'dob',
       'email',
       'phone_one',
       'phone_two',
       'city',
       'country',
       'state',
       'zip_code',
       'message',
       'status',
       'company_name',
       'industry',
   
           ];
}