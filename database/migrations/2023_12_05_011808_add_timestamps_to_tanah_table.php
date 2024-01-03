<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddTimestampsToTanahTable extends Migration
{
    public function up()
    {
        Schema::table('tanah', function (Blueprint $table) {
            $table->timestamps();
            $table->decimal('harga', 12, 3);
            $table->bigInteger('luas');
        });
    }

    public function down()
    {
        Schema::table('tanah', function (Blueprint $table) {
            $table->dropTimestamps();
        });
    }
};
