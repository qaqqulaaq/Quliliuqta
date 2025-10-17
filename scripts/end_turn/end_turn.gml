// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function end_turn(){
	
	if instance_number(obj_parcard) >= 14 and obj_deck.val_selected != global.gamegoal with obj_parcard remove_cards(obj_deck.x,obj_deck.y)
	
	with obj_deck{
		alarm[2] = 0
		alarm[0] = game_get_speed(gamespeed_fps)
	}
	with obj_player{
		player_active = false;
		
	}
	with obj_draw_button {
		has_drawn2 = true
		timer_dir = 1
	}
	
	with obj_end_button timer_dir = 1
}