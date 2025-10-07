// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
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

function check_card(){
	var _status = array_create(6,0)
	with obj_parcard{
		_status[val] += 1
	}
	
	if _status[5] == 1 {
		with obj_parcard if val == 0 or val == 5 selected = true
		with obj_deck clear_cards(0)
		return true;
	}
	
	else if _status[2] >= 1 and _status[3] >= 1{ 
		var _twocheck = 1
		var _threecheck = 1
		
		with obj_parcard {
			if val == 0 selected = true
			else if val == 2 and _twocheck > 0 {
				selected = true;
				_twocheck -= 1
			}
				
			else if val == 3 and _threecheck > 0{
				selected = true
				_threecheck -= 1
			}
		}	
		with obj_deck clear_cards(0)
		return true;			
	}
	
	
	else if _status[1] >= 1 and _status[4] >= 1 {
		var _onecheck = 1
		var _fourcheck = 1
		
		with obj_parcard {
			if val == 0 selected = true
			else if val == 4 and _fourcheck > 0 {
				selected = true;
				_fourcheck -= 1
			}
				
			else if val == 1 and _onecheck > 0{
				selected = true
				_onecheck -= 1
			}		
		}	
		with obj_deck clear_cards(0)
		return true;
	}
	
	
	else if _status[1] >= 2 and _status[3] >= 1 {
		var _onecheck = 2
		var _threecheck = 1
		
		with obj_parcard {
			if val == 0 selected = true
			else if val == 3 and _threecheck > 0 {
				selected = true;
				_threecheck -= 1
			}
				
			else if val == 1 and _onecheck > 0{
				selected = true
				_onecheck -= 1
			}		
		}	
		with obj_deck clear_cards(0)
		return true;
	}	
	
	
	else if _status[1] >= 3 and _status[2] >= 1 {
		var _onecheck = 3
		var _twocheck = 1
		
		with obj_parcard {
			if val == 0 selected = true
			else if val == 2 and _twocheck > 0 {
				selected = true;
				_twocheck -= 1
			}
				
			else if val == 1 and _onecheck > 0{
				selected = true
				_onecheck -= 1
			}		
		}	
		with obj_deck clear_cards(0)
		return true;
	}		
	
	else if _status[1] >= 1 and _status[2] >= 2 {
		var _onecheck = 1
		var _twocheck = 2
		
		with obj_parcard {
			if val == 0 selected = true
			else if val == 2 and _twocheck > 0 {
				selected = true;
				_twocheck -= 1
			}
				
			else if val == 1 and _onecheck > 0{
				selected = true
				_onecheck -= 1
			}		
		}	
		with obj_deck clear_cards(0)
		return true;
	}		
	
	
	else return false;
	
}

//clears the cards. Must be called with obj_deck
function clear_cards(pts){
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