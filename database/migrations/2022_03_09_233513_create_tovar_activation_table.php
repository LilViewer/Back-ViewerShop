<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTovarActivationTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tovar_activation', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('id_tovar');
            $table->foreign('id_tovar')->references('id')->on('tovars')->onDelete('cascade')->onUpdate('cascade');
            $table->unsignedBigInteger('id_activation');
            $table->foreign('id_activation')->references('id')->on('activations')->onDelete('cascade')->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tovar_activation');
    }
}
