<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTeamsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('teams', function (Blueprint $table) {
	        $table->string('team_name', 40);
	        $table->string('coach_name', 40);
	        $table->string('country', 40);
	        $table->string('code', 10);
	        $table->string('featured_img', 255);
            $table->timestamps();
	        $table->primary('team_name');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('teams');
    }
}
