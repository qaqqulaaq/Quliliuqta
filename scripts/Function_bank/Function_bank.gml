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
	disp_pts = point_convert(points)
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
		case 0: instance_create_layer(_x,_y,"instances",obj_0suitchuq); break;
		case 1: instance_create_layer(_x,_y,"instances",obj_1atausiq); break;
		case 2: instance_create_layer(_x,_y,"instances",obj_2malguk); break;
		case 3: instance_create_layer(_x,_y,"instances",obj_3pinasut); break;
		case 4: instance_create_layer(_x,_y,"instances",obj_4sisamat); break;
		case 5: instance_create_layer(_x,_y,"instances",obj_5tallimat); break;
		
	}
	
	
}