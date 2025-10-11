// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function deck_shuffle(){

	with obj_parcard instance_destroy()

	num_selected = 0
	val_selected = 0

	deck_list = []

	for (var _i = 0; _i < 30 div goal; _i++){
		
		if goal == 5 array_push(deck_list,0,1,1,2,2,3,3,4,4,5)
		else if goal == 10 array_push(deck_list, 0,1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8,9,9,10)
		
		//array_push(deck_list,0,0,0,0,0,0,0,0,0,0)
		//array_push(deck_list,0,0,1,1,1,1,2,2,2,3,3,3)
		//array_push(deck_list,0,0,0,2,2,2,2,3,3,3,3)
		//array_push(deck_list,1,1,1,1,1,0,0,0,0)
	}

	deck_list = array_shuffle(deck_list);
	
}


function point_convert(_num){
	var _set = 0;
	
	while (_num div power(20,_set) != 0) _set += 1;
	_set -= 1;
	
	
	var _arr = array_create(_set,0);
	var _rem = _num;
	
	while _set >= 0{
		_arr[_set] = chr(KB + (_rem div power(20, _set)));
		_rem = _rem % power(20, _set);
		_set -= 1;
	}
	
	return string_concat_ext(array_reverse(_arr))
	
}

function point_add(_num){
	points += _num
	if points > 0 disp_pts = point_convert(points)
}

//clears the cards. Must be called with obj_deck
function clear_cards(pts){
	fail_counter = 0;
	point_add(pts);
	num_selected = 0
	val_selected = 0
	with (obj_parcard) if selected instance_destroy(self)
	position_card();

}

function comp_select(_array){
	var _timeadj = 0;
	
	with obj_parcard if val == 0{
		alarm[0] = 5 + _timeadj*game_get_speed(gamespeed_fps) div 2
		_timeadj += 1;
	}
	
	for(var _i = array_length(_array) - 1; _i >= 0; _i--){
		if _array[_i] > 0 with obj_parcard{
			if val == (_i+1){
				alarm[0] = 5 + _timeadj*game_get_speed(gamespeed_fps) div 2
				_timeadj += 1;
				_array[_i] -= 1;
				if _array[_i] == 0 break;
			}
		}
	}
	with obj_deck alarm[0] = 5 + _timeadj*game_get_speed(gamespeed_fps) div 2;
}


//returns an array with x and y to determine where the cards are supposed to go

function mode_change(_goal){
	
	if _goal == 10{
		goal = 10
		gametext = "Quliliuqta!"
	}
	
}