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

function draw_card(_num=-1){
	
	//y = 32 if less than 4, 208 if greater than 4; x = 16 + 112*num of cards - 1
	var _x;
	var _y;
	var _cards = instance_number(obj_parcard)
	
	if _cards > 9 {
		_y = 240;
		_x = 60 + 90*(_cards - 10)
	}
	
	else if _cards > 4 {
		_y = 135;
		_x = 60 + 90*(_cards - 5)
	}
	
	else {
		_y = 30;
		_x = 60 + 90*(_cards)
	}
	
	if _num > -1 instance_create_layer(570,240,"instances",obj_parcard,{val: _num, targ_x: _x, targ_y: _y, hspeed: -(570 - _x)*2 / game_get_speed(gamespeed_fps), vspeed: -(240 - _y)*2 / game_get_speed(gamespeed_fps)});
	
	
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

function position_card(){


	var _cards = 0
	



	with obj_parcard{
		var _x;
		var _y;
		
		if _cards > 9 {
			_y = 240;
			_x = 60 + 90*(_cards - 10)
		}
	
		else if _cards > 4 {
			_y = 135;
			_x = 60 + 90*(_cards - 5)
		}
	
		else {
			_y = 30;
			_x = 60 + 90*(_cards)
		}		
		
		
		targ_x= _x; 
		targ_y= _y; 
		hspeed= -(x - _x)*4 div game_get_speed(gamespeed_fps);
		vspeed= -(y - _y)*4 div game_get_speed(gamespeed_fps)
		alarm[2] = game_get_speed(gamespeed_fps) div 4
		_cards += 1
	}
}

function mode_change(_goal){
	
	if _goal == 10{
		goal = 10
		gametext = "Quli-\nliuqta!"
	}
	
}