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

Route::get('/basicPractice', 'ProjectsController@index');

Route::post('/projects', 'ProjectsController@store');
