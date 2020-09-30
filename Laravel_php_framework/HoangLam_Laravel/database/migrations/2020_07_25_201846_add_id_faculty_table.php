<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddIdFacultyTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('tb_members', function (Blueprint $table) {
            $table->unsignedBigInteger('id_faculty');
            $table->foreign('id_faculty')->references('id')->on('tb_facultys')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('tb_members', function (Blueprint $table) {
            //
        });
    }
}
