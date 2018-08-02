<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Match;
class PagesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function index()
    {
    	$matches = DB::table('matches')
		   ->select('matches.team1','matches.team2','matches.date')
		    ->where('matches.round','SEMI-FINALS')
		    ->orderBy('matches.date','DESC')
		    ->limit(2)
		    ->get();
	    $mainMatch = DB::table('matches as m')
		        ->join('teams as tm1','m.team1','=','tm1.team_name')
				->join('teams as tm2','m.team2','=','tm2.team_name')
		        ->select('m.team1', 'm.team1_goal', 'm.team2_goal', 'm.team2', 'm.stadium_name', 'm.round',
			        'm.date', 'tm1.featured_img as fmg1', 'tm2.featured_img as fmg2', 'tm1.code as cd1', 'tm2.code as cd2')
		        ->where('m.round','=','Final')
		        ->first();
		$awards = DB::table('awards')
		            ->limit(2)
		            ->get();
		$points = DB::table('points')
				->limit(9)
				->get();
		$videos = DB::table('videos')
				->get();
		$stadiums = DB::table('stadiums')
				->limit(2)
				->get();
		$news = DB::table('posts')
				->limit(5)
				->get();
	    return view('home', [  'main' => $mainMatch,
	                                'matches'=>$matches,
	                                'awards' => $awards,
		                            'points' => $points,
		                            'videos' => $videos,
		                            'stadiums' => $stadiums,
		                            'news'    => $news,
	                        ]);
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
