<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddTimestampsToBangunanTable extends Migration
{
    public function up()
    {
        Schema::table('bangunan', function (Blueprint $table) {
            $table->timestamps();
            $table->decimal('harga', 12, 3);
        });
    }

    public function down()
    {
        Schema::table('bangunan', function (Blueprint $table) {
            $table->dropTimestamps();
        });
    }
};
