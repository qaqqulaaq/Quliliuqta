/// @description Insert description here
// You can write your code in this editor



if player_active and pressed and (!has_drawn or !has_drawn2) {
	
	with obj_parcard selected = false;
	player_active = false
	alarm[1] = game_get_speed(gamespeed_fps) div 2
	
	if !has_drawn with end_id {
		has_drawn = true
		timer_dir = -1
	}	
	
	
	if has_drawn or instance_number(obj_parcard) >= 7 has_drawn2 = true;
	var _timer_check = has_drawn
	has_drawn = true



	
	var _id = id
	with obj_deck{
		if global.gametimer and !_timer_check alarm[2] = (global.gametimer)*game_get_speed(gamespeed_fps)-1;
		if array_length(deck_list) == 0 {
			var _takeaway = []
			with obj_parcard array_push(_takeaway,val)
		
			deck_shuffle(_takeaway);
			_id.alarm[0] = game_get_speed(gamespeed_fps) div 2
		}
	
	else draw_card(array_pop(deck_list));
	disp_deck = point_convert(array_length(deck_list))
		
	}
	
	
	
}


