<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMatchesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('matches', function (Blueprint $table) {
            $table->increments('match_id');
	        $table->dateTime('date');
	        $table->string('team1', 40);
	        $table->integer('team1_goal');
	        $table->integer('team2_goal');
	        $table->string('team2', 40);
	        $table->string('round', 40);
	        $table->string('is_penalty', 150)->nullable();
	        $table->string('man_of_the_match', 80);
	        $table->string('stadium_name', 100);
            $table->timestamps();
	        $table->foreign('team1')->references('team_name')->on('teams');
	        $table->foreign('team2')->references('team_name')->on('teams');
	        $table->foreign('stadium_name')->references('name')->on('stadiums');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('matches');
    }
}
