<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Stadium extends Model
{
	protected $table = 'Stadiums';
	protected $primaryKey = 'name';
    public function matches(){
    	return $this->hasMany('App\Match','stadium_name','name');
    }
}
