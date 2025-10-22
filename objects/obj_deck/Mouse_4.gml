/// @description Insert description here
// You can write your code in this editor
//in multiplayer, any player can click the deck to add a card
if room == rm_game_mp{
	//Checks to see which player, if any, is able to draw a card
	var _can_draw = "none"
	with obj_draw_button if !has_drawn or !has_drawn2 {
		_can_draw = id
		break;
	}
	//if so, the player's "draw card" event is activated 
	if _can_draw != "none" with _can_draw {
		pressed = true
		event_perform(ev_mouse,ev_left_release)
	}
}

//in single player mode, a card is drawn without a separate button object
else if can_click{
	//The player cannot act until the actions are resolved
	can_click = false;
	//Go through the same start_turn script as multiplayer if the computer cannot find a card combination to steal
	
	if global.gametimer > 0 and alarm[1] <= 0 alarm[2] = global.gametimer*game_get_speed(gamespeed_fps)-1
	
	if val_selected == global.gamegoal {
		won_round = true
		alarm[1] = game_get_speed(gamespeed_fps)
	}
	else if !global.vscomp or !check_card(global.gamegoal){
		
		if instance_number(obj_parcard) >= 15 with obj_parcard remove_cards(obj_deck.x,obj_deck.y)
		start_turn_single()	
		alarm[0] = game_get_speed(gamespeed_fps) div 2	
	}
}
