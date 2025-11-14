// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function activate_pointer(){
	with obj_pointer{
		switch room{
			case rm_game_select:
				if vpos == 0 room_goto(rm_game_singoption);
				else if vpos == 1 room_goto(rm_game_multioption);
				else if vpos == 2 room_goto(rm_settings);	
				break;
				
			case rm_game_sp:
			case rm_game_sp_tutorial:
				if hpos == 5 deck_event();
				else if position_meeting(x+5,y,obj_parcard) with instance_position(x+5,y,obj_parcard) tap_card();
				break;
				
			case rm_game_mp:
			case rm_game_mp_online:
				if hpos == 0 and vpos == 2 with obj_draw_button {if player_active activate_button()}
				else if hpos == 1 and vpos == 2 with obj_end_button {if player_active activate_button();}
				else if position_meeting(x+5,y,obj_parcard) with instance_position(x+5,y,obj_parcard) {tap_card();}
				break;
			
			
			case rm_game_singoption:
			case rm_game_multioption:
				if hpos == 0 switch vpos{
					case 0: mode_change(5); break;
					case 1: mode_change(10); break;
					case 2: mode_change(20); break;
				}
				
				else if hpos >=1 and hpos <= 3 and vpos == 0{
					if room == rm_game_singoption room_goto(rm_game_sp_tutorial);
				}
				
				
				else if (hpos == 4 or hpos == 5) and vpos == 4 and (keyboard_check(vk_space) or keyboard_check(vk_enter)) with obj_start_button activate_button();
				
				//else if (hpos == 1 and vpos > 0) or ((hpos == 4 or hpos == 5) and vpos < 3) 
				else with instance_position(x+5,y,obj_parbutton) activate_button();
				break;
				
			case rm_settings:
			
				if hpos == 0{
					if vpos == 0 dialect_set("North Slope Coastal");
					else if vpos == 1 dialect_set("Wainwright");
					else if vpos == 2 dialect_set("Anaktuvuk Pass");
					else if vpos == 3 dialect_set("Point Hope");
				}
				
				else with instance_position(x+20,y,obj_touch_toggle) activate_button()
			
		}	
	}
}