// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function draw_card(_num){
	
	//y = 32 if less than 4, 208 if greater than 4; x = 16 + 112*num of cards - 1 
	var _pos = card_place()
	var _x = 570*global.winscale
	var _y = 240*global.winscale
	
	instance_create_layer(_x,_y,"Flying",obj_parcard,{val: _num, targ_x: _pos[0], targ_y: _pos[1], hspeed: (_pos[0]- _x)*2 / game_get_speed(gamespeed_fps), vspeed: (_pos[1] - _y)*2 / game_get_speed(gamespeed_fps)});
	
}


function position_card(){

	var _cards = 0
	
	with obj_parcard{
		//var _pos = card_place(_cards)	
		targ_x = _pos[0]
		targ_y = _pos[1]
		hspeed= (targ_x - x)*4 / game_get_speed(gamespeed_fps);
		vspeed= (targ_y - y)*4 / game_get_speed(gamespeed_fps)
		alarm[2] = game_get_speed(gamespeed_fps) div 4
		_cards += 1
	}
}

function card_place(){
		var _x = 60*global.winscale;
		var _y = 30*global.winscale;
		
		var _cards = -1;
		
		while position_meeting(_x,_y,obj_parcard){
			_cards += 1
		
			if _cards > 9 {
				_y = 240*global.winscale;
				_x = (60 + 90*(_cards - 10))*global.winscale;
			}
	
			else if _cards > 4 {
				_y = 135*global.winscale;
				_x = (60 + 90*(_cards - 5))*global.winscale;
			}
	
			else {		
				_x = (60 + 90*(_cards))*global.winscale
			}
		
		}
		
		return [_x,_y];
}

function clear_cards(pts){
	fail_counter = 0;
	point_add(pts);
	num_selected = 0
	val_selected = 0
	with (obj_parcard) if selected instance_destroy(self)
}