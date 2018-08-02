<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\CommentRequest;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use App\Comment;

class NewsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
    	$count = 1;
	    $posts = DB::table('posts as p')
		        ->leftJoin('comments','p.id','=','comments.post_id')
		        ->select(array('p.id','p.featured_img', 'p.date', 'p.title', 'p.description'
		        ,DB::raw('COUNT(comments.id) as comment')) )
		        ->groupBy('p.id','p.featured_img','p.date','p.title','p.description')
		        ->get();
	    return view('News.news',[
		    "posts" => $posts,
		    "count" =>$count
	    ]);
    }
	public function singlePage($id){
		$post = DB::table('posts')
				->where('id','=',$id)
				->first();
		$comments = DB::table('comments')
				->join('posts','posts.id','=','comments.post_id')
				->join('users','comments.email','=','users.email')
				->select('users.name','users.img','comments.date','comments.comment')
				->where('posts.id','=',$id)
				->get();
		$comment = DB::table('comments')
				->select(array('comments.post_id',DB::raw('COUNT(comments.id) as comment')))
				->where('comments.post_id','=',$id)
				->groupBy('comments.post_id')
				->first();
		if ($post and ($comment or $comments) ){
			return view('News.single',[
				"post" => $post,
				"comments" => $comments,
				"commentCount" =>$comment
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
    public function store(CommentRequest $request,$id)
    {
	    $today = date('Y-m-d H:i:s');
	    $usermail = Auth::user()->email;
	    $comment = new Comment(array(
	    	'post_id' => $id,
		    'date' => $today,
		    'email' => $usermail,
		    'comment' => $request->get('comment'),
	    ));
	    $comment->save();
	    return redirect()->back()->with('status', 'Your comment has been posted.');
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
