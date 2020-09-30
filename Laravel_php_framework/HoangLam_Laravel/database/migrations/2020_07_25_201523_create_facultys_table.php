<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFacultysTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
         Schema::create('tb_facultys', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('title',100);
            $table->longtext('description');
            $table->tinyInteger('status')->default(1);
            $table->dateTime('create_at')->useCurrent();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tb_facultys');
    }
}
