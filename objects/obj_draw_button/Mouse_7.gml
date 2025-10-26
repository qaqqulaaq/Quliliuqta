/// @description Draw Card
// You can write your code in this editor



if player_active and pressed and (!has_drawn or !has_drawn2) {
	//removes the selected status from all cards and resets the variables in the deck
	unselect_all()
	
	
	//Makes the player inactive while the card is being drawm
	player_active = false
	alarm[1] = game_get_speed(gamespeed_fps) div 2
	
	//Tells the end button to activate
	if !has_drawn with end_id {
		has_drawn = true
		timer_dir = -1
	}	
	
	//Don't allow the player to draw a second card if there are already 7 or more cards
	if has_drawn or instance_number(obj_parcard) >= 7 has_drawn2 = true;
	
	//If the player has drawn for the first time, the timer starts if active. Either way, the turn can proceed
	var _timer_check = has_drawn
	has_drawn = true

	

	//If the deck is out of cards, remove the ones still in play and shuffle the deck
	var _id = id
	with obj_deck{
		if global.gametimer and !_timer_check alarm[2] = (global.gametimer)*game_get_speed(gamespeed_fps)-1;
		if array_length(deck_list) == 0 {
			var _takeaway = []
			with obj_parcard array_push(_takeaway,val)
		
			deck_shuffle(_takeaway);
			_id.alarm[0] = game_get_speed(gamespeed_fps) div 2
		}
	//Otherwise, a card is drawn
		else draw_card(array_pop(deck_list));
		disp_deck = point_convert(array_length(deck_list))
		
	}	
}


