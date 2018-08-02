<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddColumnToPlayersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('players', function (Blueprint $table) {
	        $table->integer('match_played');
	        $table->integer('minutes_played');
	        $table->integer('goals_scored');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('players', function (Blueprint $table) {
	        $table->dropColumn('match_played');
	        $table->dropColumn('minutes_played');
	        $table->dropColumn('goals_scored');
        });
    }
}
