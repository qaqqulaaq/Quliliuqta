// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


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

function card_place_mp(){
		var _x = 80*global.winscale;
		var _y = 32*global.winscale;
		
		var _cards = -1;
		
		while position_meeting(_x,_y,obj_parcard){
			_cards += 1
		
			if _cards > 6 {
				_x = ( 80 *(_cards-6))*global.winscale;
				_y = 128*global.winscale;
			}
	
			else {		
				_x = ( 80 *(_cards+1))*global.winscale;
				_y = 32 * global.winscale;
			}
		
		}
		if _cards == -1 _cards = 0
		return [_x,_y,_cards];
}


function card_place_sp(_tut = false){
		var _x = 60*global.winscale;
		var _y = 30*global.winscale;
		
		var _cards = -1;
		var _targ = obj_parcard
		if _tut _targ = obj_parcard_tutorial
		
		
		while position_meeting(_x,_y,_targ){
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
		if _cards == -1 _cards = 0
		return [_x,_y,_cards];
}