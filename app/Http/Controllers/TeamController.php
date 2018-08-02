<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
class TeamController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
	    $teams = DB::table('teams')
	                  ->get();
	    return view('Team.team',[
		    "teams" => $teams
	    ]);
    }
    public function singlePage($name){
	    $team = DB::table('teams')
	                 ->where('teams.team_name','like','%'.$name.'%')
	                 ->first();
	    $players = DB::table('players')
		            ->join('teams','players.team_name','teams.team_name')
		            ->where('players.team_name','like','%'.$name.'%')
		            ->get();
	    if ($team && $players){
		    return view('Team.single',[
			    "team" => $team,
			    "players" =>$players
		    ]);
	    }else{
	    	abort(404);
	    }

    }
    public function singlePlayer($id){
	    $player = DB::table('players')
	                 ->join('teams','players.team_name','teams.team_name')
	                 ->where('players.id','=',$id)
	                 ->first();
	    if ($player){
		    return view('Team.single-player',[
			    "player" =>$player
		    ]);
	    }else{
	    	abort(404);
	    }

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
