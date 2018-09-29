<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/','PagesController@index')->name('home');
Route::get('/team','TeamController@index')->name('teams');
Route::get('/team/{name}', [
	'as' => 'single.team',
	'uses' => 'TeamController@singlePage'
]);
Route::get('players/{id}', [
	'as' => 'single.player',
	'uses' => 'TeamController@singlePlayer'
]);
Route::get('groups/', [
	'as' => 'point.table',
	'uses' => 'MatchController@groups'
]);
Route::get('matches/', [
	'as' => 'matches.all',
	'uses' => 'MatchController@allmatch'
]);
Route::get('/stadium','StadiumController@index')->name('stadiums');
Route::get('/stadium/{name}', [
	'as' => 'single.stadium',
	'uses' => 'StadiumController@singlePage'
]);
Auth::routes();
Route::get('/home', 'PagesController@index')->name('home');
Route::get('/logout','Auth\LoginController@logout');
Route::get('/news','NewsController@index')->name('news');
Route::get('/news/{id}', [
	'as' => 'single.news',
	'uses' => 'NewsController@singlePage'
]);
Route::post('/comment/store/{id}',[
	'as' =>'comment.store',
	'uses' =>'NewsController@store'
]);
Route::get('/award',[
	'as' =>'awards',
	'uses' => 'AwardController@index'
]);
Route::post('/search',[
	'as' =>'search',
	'uses' =>'PagesController@search'
]);

Route::group(array('prefix' => 'admin', 'namespace' => 'Admin', 'middleware' =>'admin'), function () {
	Route::get('/dashboard',function (){
		return view('admin.index');
	})->name("dashboard");
	Route::get('users', 'UsersController@index')->name("users");
	Route::get('users/{id?}/edit', 'UsersController@edit');
	Route::post('users/{id?}/edit','UsersController@update');
	Route::get('users/{id?}/delete','UsersController@delete');
	Route::get('roles', 'RolesController@index')->name("roles");
	Route::get('roles/create', 'RolesController@create')->name("create.role");
	Route::post('roles/create', 'RolesController@store');
});

