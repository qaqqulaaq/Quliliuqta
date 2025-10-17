/// @description Change the turn and check if the player gets points
// You can write your code in this editor

if instance_number(obj_parcard) == 14 and val_selected != global.gamegoal{
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

if obj_deck.val_selected == global.gamegoal clear_cards(num_selected,turn);

num_selected = 0;
val_selected = 0;
with obj_parcard selected = false;


if turn < instance_number(obj_player_stats) - 1 turn++
else turn = 0

var _turn = turn

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


