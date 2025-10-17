// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function end_turn(){
	with obj_deck{
		alarm[2] = 0
		alarm[0] = game_get_speed(gamespeed_fps)
		if instance_number(obj_parcard) == 14{
			if fail_counter > 2 {
				deck_shuffle();
			}
			else{
				fail_counter += 1
				var _restock = [];
				with obj_parcard{
					array_push(_restock, val);
					instance_destroy(self);
				}
				deck_list = array_concat(deck_list,_restock)
				deck_list = array_shuffle(deck_list)
			}
		}
	
	
	}
	with obj_player{
		player_active = false;
		
	}
	with obj_draw_button if has_drawn2 == false{
		has_drawn2 = true
		timer_dir = -1
		
	}
}