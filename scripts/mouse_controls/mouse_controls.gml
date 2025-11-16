// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function mouse_controls(){
	
	switch room{
		
////Mouse Controls begin here
	///////Main Menu
		case rm_game_select:
			
			if position_meeting(mouse_x,mouse_y, obj_main_select) and mouse_check_button(mb_left) with instance_position(mouse_x,mouse_y,obj_main_select){
				if label == "Single Player" room_goto(rm_game_singoption);
				else if label == "Multiplayer" room_goto(rm_game_multioption);
				else if label == "Settings" room_goto(rm_settings);
			}
			break;
	//////Mouse controls in the main game		
		case rm_game_sp:
		case rm_game_mp:
		case rm_game_mp_online:
			if (mouse_check_button_pressed(mb_left) and position_meeting(mouse_x,mouse_y,obj_deck)) deck_event()
			
			else if (mouse_check_button_pressed(mb_left) and position_meeting(mouse_x,mouse_y,obj_player)) with instance_position(mouse_x,mouse_y,obj_player) activate_button(); 
			
			else if (mouse_check_button_pressed(mb_left) and position_meeting(mouse_x,mouse_y,obj_mic)) with instance_position(mouse_x,mouse_y,obj_mic) say_number(val)
			
			else if instance_exists(obj_parcard) and (mouse_check_button(mb_left) or global.touchmode) and position_meeting(mouse_x,mouse_y,obj_parcard) and !position_meeting(mouse_x,mouse_y,obj_mic) with instance_position(mouse_x,mouse_y,obj_parcard) {
				if !just_pressed and !(!mouse_check_button(mb_left) and global.touchmode and hover) and set{
					hover = true
					just_pressed = true
					tap_card();
				}
			}
			
			
			
			break;
	//////Mouse controls in the game options screen	
		case rm_game_singoption:
		case rm_game_multioption:
			if position_meeting(mouse_x,mouse_y,obj_parbutton) and mouse_check_button(mb_left) with instance_position(mouse_x,mouse_y,obj_parbutton) activate_button();
			
			else if (mouse_check_button_pressed(mb_left) and position_meeting(mouse_x,mouse_y,obj_gamechanger)) with instance_position(mouse_x,mouse_y,obj_gamechanger){
				switch mode_set {
					case "Tallimaliuqta!": mode_change(5); break;
					case "Quliliuqta!": mode_change(10); break;
					case "Iñuiññaliuqta!": mode_change(20); break;
				}
			}
				
			
			break;
			
		case rm_settings:
			if position_meeting(mouse_x,mouse_y,obj_dialect_select) and mouse_check_button_pressed(mb_left) with instance_position(mouse_x,mouse_y,obj_dialect_select) dialect_set(label);
			else if position_meeting(mouse_x,mouse_y,obj_setting_toggle) and mouse_check_button(mb_left) with instance_position(mouse_x,mouse_y,obj_setting_toggle) activate_button()
			
/////Mouse Controls End Here
	}
}