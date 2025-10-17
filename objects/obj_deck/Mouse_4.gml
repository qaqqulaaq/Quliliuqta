/// @description Insert description here
// You can write your code in this editor



/*
if can_click{
	can_click = false;
	alarm[2] = game_get_speed(gamespeed_fps) div 2
	with obj_parcard selected = false;
	num_selected = 0;
	val_selected = 0;
	if !check_card(global.gamegoal){

		if array_length(deck_list) == 0 deck_shuffle();
	
		else if instance_number(obj_parcard) < 15 {
			draw_card(array_pop(deck_list));
		}
	
		else {
			if fail_counter > 2 deck_shuffle();
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
	
		disp_deck = point_convert(array_length(deck_list))
	}
}
*/