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
use App\Sale;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/fillDB', function () {

	for($i = 1; $i <= 12; $i++) {
		$salesData = new Sale;
		$salesData->month    = $i;
		$salesData->provider = "Amazon";
		$salesData->amount = rand(5, 15000);
		$salesData->save();
		$salesDataB = new Sale;
		$salesDataB->month    = $i;
		$salesDataB->provider = "Walmart";
		$salesDataB->amount = rand(5, 15000);
		$salesDataB->save();
		}
});
Route::get('/show', function () {
	$sales = App\Sale::all();
	return view('show')->with('sales', $sales);

});
