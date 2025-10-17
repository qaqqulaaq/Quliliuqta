// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function draw_card(_num){
	
	//y = 32 if less than 4, 208 if greater than 4; x = 16 + 112*num of cards - 1 
	var _pos = card_place()
	var _x = 320*global.winscale
	var _y = 230*global.winscale
	
	instance_create_layer(_x,_y,"Flying",obj_parcard,{val: _num, targ_x: _pos[0], targ_y: _pos[1], hspeed: (_pos[0]- _x)*4 / game_get_speed(gamespeed_fps), vspeed: (_pos[1] - _y)*4 / game_get_speed(gamespeed_fps)});
	
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
		
		return [_x,_y];
}

function clear_cards(pts,_player){
	fail_counter = 0;
	with obj_player_stats if _player == player_num{
		player_score += pts
		disp_score = point_convert(player_score)
	}
	with obj_parcard if selected{
		var _x;
		switch _player{
			case 0: _x = 225; break;
			case 1: _x = 1695; break;
			case 2: _x = 615; break;
			case 3: _x = 1305; break;
			default: _x = 0; break;		
		}
		
		remove_cards(_x,room_height)
	}
}

function remove_cards(_x,_y){
		targ_x = _x
		targ_y = _y
		layer_add_instance("Flying",id)
		hspeed = (_x - x)*4 / game_get_speed(gamespeed_fps)
		vspeed = (room_height - y)*4 / game_get_speed(gamespeed_fps)
		alarm[3] = game_get_speed(gamespeed_fps) / 4
}