// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function deck_shuffle(){

	with obj_parcard instance_destroy()

	num_selected = 0
	val_selected = 0

	deck_list = []

	for (var _i = 0; _i < 6; _i++){
		
		array_push(deck_list,0,1,1,2,2,3,3,4,4,5)
		
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

function draw_card(_num){
	
	//y = 32 if less than 4, 208 if greater than 4; x = 16 + 112*num of cards - 1
	var _x;
	var _y;
	var _cards = instance_number(obj_parcard)
	
	if _cards > 3 {
		_y = 208;
		_x = 16 + 112*(_cards - 4)
	}
	else {
		_y = 32;
		_x = 16 + 112*(_cards)
	}
	
	switch _num{
		case 0: instance_create_layer(_x,_y,"instances",obj_00suitchuq); break;
		case 1: instance_create_layer(_x,_y,"instances",obj_01atausiq); break;
		case 2: instance_create_layer(_x,_y,"instances",obj_02malguk); break;
		case 3: instance_create_layer(_x,_y,"instances",obj_03pinasut); break;
		case 4: instance_create_layer(_x,_y,"instances",obj_04sisamat); break;
		case 5: instance_create_layer(_x,_y,"instances",obj_05tallimat); break;
		
	}
	
	
}

//clears the cards. Must be called with obj_deck
function clear_cards(pts){
	fail_counter = 0;
	var _unselect = []
	point_add(pts);
	num_selected = 0
	val_selected = 0
	with (obj_parcard) {
		if !selected array_push(_unselect,val)
		instance_destroy(self)
	}
	while array_length(_unselect) > 0 draw_card(array_pop(_unselect))
}

function comp_select(_array){
	var _timeadj = 0;
	
	with obj_00suitchuq{
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