//This function should only be called in multiplayer mode.
function end_turn(){
	//At the end of the turn, if there are 14 cards in play, they will be destroyed unless the correct value is selected.
	
	
	if room == rm_game_mp_online send_evaluation_request();
	
	else{
		if instance_number(obj_parcard) >= 14 and obj_deck.val_selected != global.gamegoal with obj_parcard remove_cards(obj_deck.x,obj_deck.y, false)
	
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
	
		
	}
	
	
	with obj_end_button timer_dir = 1
}