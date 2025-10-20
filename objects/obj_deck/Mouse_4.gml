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
	//the start turn and end turn resolve nearly quickly
	start_turn(15)
	//The end of the turn is initiated at the same time
	can_click = false;
	

	//the computer player is checked. If it is not checked, the computer selects and removes cards.
	//if !check_card(global.gamegoal){
	
		//if array_length(deck_list) == 0 deck_shuffle();
	/*probably captured somewhere else
		else if instance_number(obj_parcard) < 15 {
			draw_card(array_pop(deck_list));
		}
	*/
	
		//disp_deck = point_convert(array_length(deck_list)) probably moved somewhere else
	
}
