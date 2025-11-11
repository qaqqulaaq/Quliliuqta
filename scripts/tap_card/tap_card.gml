// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function tap_card(){

	if obj_deck.alarm[0] <= 0 and obj_deck.alarm[3] <= 0 and obj_deck.can_click{
		
		if room == rm_game_mp_online and global.onlinenum == obj_deck_online.turn send_selection(position,selected);
		
		else{
			if set{
			
				var _check = false
				with obj_draw_button {
					if has_drawn {
						_check = true; 
						break;
					}
				}
		
				if _check or room == rm_game_sp{		
					if selected {
						selected = false
						obj_deck.num_selected -= 1
						obj_deck.val_selected -= val;
					}
					else {
						selected = true
						var _val = val;
						with obj_deck{
							num_selected += 1;
							val_selected += _val;		
						}
					}
				}
			}
		}
	}
}