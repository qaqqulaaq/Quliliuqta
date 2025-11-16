// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function deck_event(){
	
	with obj_deck{
		//in multiplayer, any player can click the deck to add a card
		if room == rm_game_mp or room == rm_game_mp_online remote_draw();

		//in single player mode, all progression is controlled by the deck object
		else if can_click{
			//The player cannot act until the actions are resolved
			can_click = false;
	
		///////Go through the same start_turn script as multiplayer if the computer cannot find a card combination to steal//////

			//If the correct number is selected, the cards are collected
			if array_length(sel_list) > 0{
				var _eval = evaluate_cards() 
			
				if _eval == global.gamegoal {
					won_round = true
					alarm[1] = game_get_speed(gamespeed_fps)
					if global.gametimer > 0 alarm[2] = -1
				}
			}
			//If not, the computer will try to select cards, if vs computer mode is active
			if !won_round{
				if !global.vscomp or !check_card(global.gamegoal){
		
				//if neither of those conditions are met, the cards are drawn in if there are 15 cards on the board
					if instance_number(obj_parcard) >= 15  {
						with obj_parcard remove_cards(obj_deck.x,obj_deck.y, false);
						alarm[0] = game_get_speed(gamespeed_fps) div 2	
						sp_remove = true
						unselect_all()
					}
		
					else{
						start_turn_single()	
						alarm[0] = game_get_speed(gamespeed_fps) div 2	
						if global.gametimer > 0 and alarm[1] <= 0 alarm[2] = global.gametimer*game_get_speed(gamespeed_fps)-1
					}
					//Set the timer if that option was selected
		
				}
			}
		}
	}

}