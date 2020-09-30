<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        DB::table('tb_facultys')->insert([
        	'title' => 'Cong nghe thong tin',
        	'description' => 'Mo ta ve khoa nay'
        ]);
    }
}
