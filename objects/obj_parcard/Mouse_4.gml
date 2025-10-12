/// @description Insert description here
// You can write your code in this editor

if obj_deck.can_click{
	if set{
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
				if val_selected == global.gamegoal {
					alarm[1] = game_get_speed(gamespeed_fps) div 2+1;
					can_click = false
				}
			}
		}
	}
}