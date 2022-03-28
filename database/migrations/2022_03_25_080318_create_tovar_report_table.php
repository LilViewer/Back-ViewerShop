<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTovarReportTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tovar_report', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('id_userReport');
            $table->foreign('id_userReport')->references('id')->on('user_report')->onDelete('cascade')->onUpdate('cascade');
            $table->unsignedBigInteger('id_tovar');
            $table->foreign('id_tovar')->references('id')->on('tovars')->onDelete('cascade')->onUpdate('cascade');
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
        Schema::dropIfExists('tovar_report');
    }
}
