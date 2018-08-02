<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePlayersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('players', function (Blueprint $table) {
            $table->increments('id');
	        $table->string('name', 60);
	        $table->string('img', 255);
	        $table->string('team_name', 40);
	        $table->string('p_role', 30);
	        $table->integer('p_number');
	        $table->integer('age');
	        $table->integer('height');
	        $table->dateTime('birth_date');
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
        Schema::dropIfExists('players');
    }
}
