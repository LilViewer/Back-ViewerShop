<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTovarsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tovars', function (Blueprint $table) {

            $table->bigIncrements('id');
            $table->string('name');
            $table->string('price')->default(0);
            $table->string('discount')->default(0);
            $table->text('description',1200);
            $table->string('data');
            $table->string('min_OS');
            $table->string('min_Processor');
            $table->string('min_RAM');
            $table->string('min_Video_Card');
            $table->string('rec_OS');
            $table->string('rec_Processor');
            $table->string('rec_RAM');
            $table->string('rec_Video_Card');
            $table->string('Size');
            $table->double('Transitions')->default(0);
            $table->double('Buy')->default(0);
            $table->double('Rating')->default(0);
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
        Schema::dropIfExists('tovars');
    }
}
