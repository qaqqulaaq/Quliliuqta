// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_card(_num,_tut = false){
	
	var _x;
	var _y;
	var _pos;
	
	if room = rm_game_mp{
		_pos = card_place_mp()
		_x = 320*global.winscale
		_y = 230*global.winscale
	}
	
	else{
		_pos = card_place_sp(_tut)
		_x = 560*global.winscale
		_y = 225*global.winscale
	}
	
	if !_tut instance_create_layer(_x,_y,"Flying",obj_parcard,{val: _num, targ_x: _pos[0], targ_y: _pos[1], hspeed: (_pos[0]- _x)*4 / game_get_speed(gamespeed_fps), vspeed: (_pos[1] - _y)*4 / game_get_speed(gamespeed_fps)});
	else instance_create_layer(_x,_y,"Flying",obj_parcard_tutorial,{val: _num, targ_x: _pos[0], targ_y: _pos[1], hspeed: (_pos[0]- _x)*4 / game_get_speed(gamespeed_fps), vspeed: (_pos[1] - _y)*4 / game_get_speed(gamespeed_fps)});
}

function remote_draw(){
	//Checks to see which player, if any, is able to draw a card
	var _can_draw = "none"
	with obj_draw_button if !has_drawn or !has_drawn2 {
		_can_draw = id
		break;
	}
	//if so, the player's "draw card" event is activated 
	if _can_draw != "none" with _can_draw {
		pressed = true
		event_perform(ev_mouse,ev_left_release)
	}
}