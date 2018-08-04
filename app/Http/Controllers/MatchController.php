<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
class MatchController extends Controller
{
    public function groups(){
    	$count = 1;
	    $points = DB::table('points as p')
		    ->join('teams as tm','p.team_name','=','tm.team_name')
		    ->get();
	    return view('Matches.groups',[
		    "points" => $points,
		    "count"  => $count,
	    ]);
    }
    public function allmatch(){
	    $allmatch = DB::table('matches as m')
	                  ->join('teams as tm1','m.team1','=','tm1.team_name')
	                  ->join('teams as tm2','m.team2','=','tm2.team_name')
	                  ->select('m.team1', 'm.team1_goal', 'm.team2_goal', 'm.team2', 'm.stadium_name', 'm.round',
		                  'm.date','m.is_penalty','tm1.code as cd1', 'tm2.code as cd2')
	                    ->where('m.round','Round of 16')
		                ->orWhere('m.round','Quarter-finals')
		                ->orWhere('m.round','Semi-finals')
		                ->orWhere('m.round','Play-off for third place')
		                ->orWhere('m.round','Final')
	                  ->get();
	    return view('Matches.all',[
		    "allmatch" =>$allmatch
	    ]);
    }
}
