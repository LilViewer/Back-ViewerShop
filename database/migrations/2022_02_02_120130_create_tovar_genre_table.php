<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTovarGenreTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tovar_genre', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('id_tovar');
            $table->foreign('id_tovar')->references('id')->on('tovars')->onDelete('cascade')->onUpdate('cascade');
            $table->unsignedBigInteger('id_genre');
            $table->foreign('id_genre')->references('id')->on('genres')->onDelete('cascade')->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
//        Schema::table('tovar_genre', function (Blueprint $table) {
//            $table->dropForeign(['id_genre']);
//            $table->dropForeign(['id_tovar']);
//        });
        Schema::dropIfExists('tovar_genre');
    }
}
