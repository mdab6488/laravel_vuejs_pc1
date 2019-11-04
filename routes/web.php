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

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/codes', function()
{
    return ['php', 'vuejs', 'paython', 'javascript', 'laravel', 'etc'];
});

Route::get('/', function()
{
    return view('welcome');
});

//PROJECT
Route::get('/basicPractice', 'ProjectsController@index');
Route::post('/projects', 'ProjectsController@store');

//STATUS
Route::get('/statuses', 'StatusController@index');
Route::post('/statuses', 'StatusController@store');

//Testimonialis
Route::get('/testimonials', 'TestimonialsController@index');
Route::post('/testimonials', 'TestimonialsController@store');

Route::get('/series', 'SeriesController@index');


Route::get('/contact', 'ContactController@index');
Route::post('/contact', 'ContactController@store');
