// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function start_turn(_maxcards){

	//the specific function for multiplayer is run if appropriate
	
	if room == rm_game_mp start_turn_multiplayer(_maxcards);
	else if room == rm_game_mp_online start_turn_multiplayer_online(_maxcards);
	else if room == rm_game_sp can_click = true
	unselect_all()
	
	
}

function start_turn_single(){
	

	with obj_deck{
		//if global.gametimer and !_timer_check alarm[2] = (global.gametimer)*game_get_speed(gamespeed_fps)-1;
		if array_length(deck_list) == 0 {
			if decks >= global.deckgoal-1 and global.setgoal == "Decks" {
				game_over = true;
				break;
			}
			else {
				decks ++
				var _takeaway = []
				with obj_parcard array_push(_takeaway,val)
				deck_shuffle(_takeaway);
			}
		}
	//Otherwise, a card is drawn
		if instance_number(obj_parcard) < 15 draw_card(array_pop(deck_list));
		disp_deck = point_convert(array_length(deck_list))
	}
	
}


function start_turn_multiplayer(_maxcards){
	
	if instance_number(obj_parcard) >= _maxcards and val_selected != global.gamegoal{
		clear_table()
	}

	if obj_deck.val_selected == global.gamegoal clear_cards(num_selected,turn);
	
	if turn < instance_number(obj_player_stats) - 1 turn++
	else turn = 0

	var _turn = turn

	with obj_player if player_num == _turn player_active = true;
	with obj_draw_button if player_num = _turn {
		timer_dir = -1
		has_drawn = false;
		has_drawn2 = false
		
		if instance_exists(obj_pointer){
			obj_pointer.hpos = 0
			obj_pointer.vpos = 2
			obj_pointer.x = x - sprite_get_width(spr_draw_button) div 2
			obj_pointer.y = y + sprite_get_height(spr_draw_button) div 2
		}
		
		break;
	}

	with obj_end_button if player_num = _turn {
		has_drawn = false; 
		break
	}
	
}

function start_turn_multiplayer_online(_maxcards){
	var _turn = turn
	won_round = false
	with obj_player if player_num == _turn player_active = true;
	with obj_draw_button if player_num = _turn {
		has_drawn = false;
		has_drawn2 = false
		break;
	}

	with obj_end_button if player_num = _turn {
		has_drawn = false; 
		break
	}
}


function clear_table(){
	//If the deck has been traversed three times already, the deck resets
		if fail_counter > 2 {			
			deck_shuffle();
		}
		//Otherwise, the cards are returned to the deck, which is shuffled without placing old cards back in
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
		disp_deck = point_convert(array_length(deck_list))
}