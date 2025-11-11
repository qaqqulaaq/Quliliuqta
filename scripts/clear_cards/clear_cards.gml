// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function clear_cards(pts,_player = 0){
	fail_counter = 0;
	with obj_player_stats if _player == player_num{
		player_score += pts
		disp_score = point_convert(player_score)
		if player_score >= global.pointgoal and global.setgoal == "Points"{
			obj_deck.winner = "Player " + string(player_num + 1)
			obj_deck.game_over = true;
		}
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
		obj_deck.cardlist[position] = -1
		remove_cards(_x,room_height)
	}
}


function clear_cards_solo(_pts){
	fail_counter = 0
	var _y;
	if !won_round{
		comp_pts += _pts;
		comp_disp_pts = point_convert(comp_pts)
		_y = -75*global.winscale		
	}
	else{
		solo_pts += _pts
		disp_pts = point_convert(solo_pts);
		_y = room_height
	}	
	with obj_parcard if selected {
		remove_cards(room_width div 2, _y)
		obj_deck.cardlist[position] = -1
	}
}


function remove_cards(_x,_y = room_height, _destroy = true){
		instance_destroy(mic)
		targ_x = _x
		targ_y = _y
		layer_add_instance("Flying",id)
		hspeed = (_x - x)*4 / game_get_speed(gamespeed_fps)
		vspeed = (_y - y)*4 / game_get_speed(gamespeed_fps)
		if _destroy alarm[3] = game_get_speed(gamespeed_fps) / 4
}