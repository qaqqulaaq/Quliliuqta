// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function clear_cards(_player = 0){
	
	if global.soundon audio_play_sound(snd_take_cards,1,false)
	var _pts = array_length(obj_deck.sel_list)
	
	fail_counter = 0;
	with obj_player_stats if _player == player_num{
		player_score += _pts
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
		if room == rm_game_mp obj_deck.cardlist[position] = -1
		else if room == rm_game_mp_online obj_deck_online.cardlist[position] = noone
		remove_cards(_x,room_height)
	}
}


function clear_cards_solo(){
	
	if global.soundon audio_play_sound(snd_take_cards,1,false)
	
	var _pts = array_length(obj_deck.sel_list)
	
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
	
	for (var _i = 0; _i < array_length(obj_deck.sel_list); _i++) with obj_deck.sel_list[_i] {
		
		obj_deck.cardlist[position] = -1
		remove_cards(room_width div 2, _y)
	}
	
	//with obj_parcard if selected {
	//	remove_cards(room_width div 2, _y)
	//	obj_deck.cardlist[position] = -1
	//}
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

function evaluate_cards(){
	var _op = "+"
	var _total = 0
	with obj_deck{
		var _id = array_last(sel_list)
		//If a non-number card is at the top of the deck, it is removed from the selection
		if !is_numeric(_id.val) with _id unselect_card()
		for (var _i = 0; _i < array_length(sel_list); _i++){
			var _val = sel_list[_i].val
			if !is_numeric(_val) _op = _val
			else switch _op{
				case "+": _total += _val; break;
				case "-":
					_total -= _val;
					_op = "+";
					break;
			}
		}
	}
	return _total;
	
}

function unselect_all(){
	with obj_parcard {
		selected = false
		sel_pos = -1
		op = "+"
	}
	with obj_deck {
		sel_list = [];
	}
}
