<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateStadiumTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('stadiums', function (Blueprint $table) {
	        $table->string('name', 100);
	        $table->string('city', 50);
	        $table->string('capacity', 100);
	        $table->string('opening', 100);
	        $table->string('picture', 255);
	        $table->longText('description');
            $table->timestamps();
	        $table->primary('name');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('stadia');
    }
}
