<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePointsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('points', function (Blueprint $table) {
            $table->increments('id');
	        $table->string('group_name', 40);
	        $table->string('team_name', 40);
	        $table->integer('MP');
	        $table->integer('W');
	        $table->integer('D');
	        $table->integer('L');
	        $table->integer('GF');
	        $table->integer('GA');
	        $table->integer('GD');
	        $table->integer('PTS');
            $table->timestamps();
	        $table->foreign('team_name')->references('team_name')->on('teams');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('points');
    }
}
