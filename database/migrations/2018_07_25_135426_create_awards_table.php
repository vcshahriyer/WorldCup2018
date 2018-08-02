<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAwardsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('awards', function (Blueprint $table) {
            $table->increments('id');
	        $table->string('designation', 100);
	        $table->string('player_name', 50);
	        $table->string('team_name', 40);
	        $table->longText('award_description');
	        $table->string('award_img', 255);
	        $table->string('prize_img', 255);
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
        Schema::dropIfExists('awards');
    }
}
