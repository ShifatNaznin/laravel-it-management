<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateChechkoutFormsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('chechkout_forms', function (Blueprint $table) {
            $table->id();
            $table->string('first_name',300)->nullable();
            $table->string('last_name',300)->nullable();
            $table->string('dob',300)->nullable();
            $table->string('email',300)->nullable();
            $table->string('phone_one',300)->nullable();
            $table->string('phone_two',300)->nullable();
            $table->string('city',300)->nullable();
            $table->string('country',300)->nullable();
            $table->string('state',300)->nullable();
            $table->string('zip_code',300)->nullable();
            $table->text('message')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('chechkout_forms');
    }
}