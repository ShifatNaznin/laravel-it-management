<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateServiceDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('service_details', function (Blueprint $table) {
            $table->id();
            $table->integer('status')->default(1);
            $table->string('s_name',300)->nullable();
            $table->string('link',300)->nullable();
            $table->string('s_image',300)->nullable();
            $table->string('subscription_price',300)->nullable();
            $table->string('buy_price',300)->nullable();
            $table->text('sub_heading')->nullable();
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
        Schema::dropIfExists('service_details');
    }
}
