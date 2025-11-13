// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function activate_button(_name = ""){
	switch object_index{
		
		case obj_touch_toggle:
			
			if (label == "On" and !global.touchmode){
				timer_dir = 1
				with obj_touch_toggle if label == "Off" timer_dir = -1
				global.touchmode = true
			}
			
			else if (label == "Off" and global.touchmode){
				timer_dir = 1
				with obj_touch_toggle if label == "On" timer_dir = -1
				global.touchmode = false
			}
			
			break;

		
		
		case obj_draw_button:
			if player_active and (!has_drawn or !has_drawn2){
				player_active = false
				alarm[3] = game_get_speed(gamespeed_fps) div 8
				pressed = true
				timer_dir = 1
			}
			break;
		
		case obj_end_button:
			if player_active and has_drawn end_turn();	
			break;
		
		case obj_start_button:
			timer_dir = 1
			pressed = true;
			break;
			
		case obj_vs_toggle:
			timer_dir = 1
			if label == "Off" global.vscomp = false;
			else global.vscomp = true;

			with obj_vs_toggle {
				if label == "On" and global.vscomp == false timer_dir = -1
				if label == "Off" and global.vscomp == true timer_dir = -1
			}
			break;
		
		case obj_playnum_button:
			timer_dir = 1
			global.num_of_players = label
			with obj_playnum_button if label != global.num_of_players timer_dir = -1
			break;
			
			
		case obj_goal_button:
			timer_dir = 1;
			global.setgoal = label;
			var _label = label;
			with obj_add_button if setting != "timer" {
				setting = _label;
				if (setting == "Points" and global.pointgoal == 400) or (setting == "Decks" and global.deckgoal == 30) timer_dir = 1
				else timer_dir = -1
				if setting == "Decks" label = "+"+K01
				else if setting == "Points" label = "+"+K05
			}
	
	
			with obj_minus_button if setting != "timer" {
				setting = _label;
				if (setting == "Points" and global.pointgoal == 5) or (setting == "Decks" and global.deckgoal == 1) timer_dir = 1
				else timer_dir = -1
				if setting == "Decks" label = "+"+K01
				else if setting == "Points" label = "+"+K05
			}

			with obj_goal_button if label != global.setgoal timer_dir = -1;
			break;
		
		case obj_add_button:
			if global.gametimer < 120 and setting == "timer" {
				if !pressed{
					pressed = true
					timer_dir = 1
					sprite_timer = 0
					alarm[0] = game_get_speed(gamespeed_fps) div 3
					global.gametimer += 5
					with obj_minus_button if setting == "timer" timer_dir = -1
				}
				
				
			}

			else if global.pointgoal < 400 and setting == "Points" {
				if !pressed{
					pressed = true
					timer_dir = 1
					sprite_timer = 0
					alarm[0] = game_get_speed(gamespeed_fps) div 3
					global.pointgoal += 5
					with obj_minus_button if setting != "timer" timer_dir = -1
				}
					
				
			}

			else if global.deckgoal < 30 and setting == "Decks" {
				if !pressed{
					pressed = true
					timer_dir = 1
					sprite_timer = 0
					alarm[0] = game_get_speed(gamespeed_fps) div 3
					global.deckgoal += 1
					with obj_minus_button if setting != "timer" timer_dir = -1
				}
					
				
			}
			break;	
			
		case obj_minus_button:
			if global.gametimer > 0 and setting == "timer" {
				if !pressed{
					pressed = true
					timer_dir = 1
					sprite_timer = 0
					alarm[0] = game_get_speed(gamespeed_fps) div 3
					global.gametimer -= 5
					with obj_add_button if setting == "timer" timer_dir = -1
				}
					
				
			}

			else if global.pointgoal > 5 and setting == "Points" {
				if !pressed{
					pressed = true
					timer_dir = 1
					sprite_timer = 0
					alarm[0] = game_get_speed(gamespeed_fps) div 3
					global.pointgoal -= 5
					with obj_add_button if setting != "timer" timer_dir = -1
				}
					
				
			}

			else if global.deckgoal > 1 and setting == "Decks" {
				if !pressed{
					pressed = true
					timer_dir = 1
					sprite_timer = 0
					alarm[0] = game_get_speed(gamespeed_fps) div 3
					global.deckgoal -= 1
					with obj_add_button if setting != "timer" timer_dir = -1
				}
					
				
				
			}
			break;
			
	}
}