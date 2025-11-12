/// @description Insert description here
// You can write your code in this editor


//clear the joystick if the axes aren't being pressed

if array_length(devices) > 0{
	for (var _i = 0; _i < array_length(devices); _i++){
		if abs(gamepad_axis_value(devices[_i],gp_axislh)) < 0.2{
			
			tilt_h[_i] = 0
		}
		if abs(gamepad_axis_value(devices[_i],gp_axislv)) < 0.2 tilt_v[_i] = 0

	}
}

if !mouse_check_button(mb_left) {
		with obj_parcard just_pressed = false;
		with obj_game_exit alarm[0] = -1

}

if mouse_check_button_pressed(mb_left){
	with obj_pointer instance_destroy();
	global.pointeron = false	
}




if (room == rm_game_mp or room == rm_game_sp) and obj_deck.game_over {
	if mouse_check_button_pressed(mb_any) or keyboard_check_pressed(vk_anykey) with obj_game_exit game_exit();
}

else {
	
	///////Keyboard Controls/////////////
	
	//exits the room or game
	if keyboard_check_pressed(vk_escape) game_exit();
	
	//activates the deck, even if there is no pointer object
	else if (room == rm_game_sp or room == rm_game_mp) and press_enter() deck_event();
	
	//creates a pointer object if one does not exist
	else if !instance_exists(obj_pointer) and (press_any() or global.pointeron) {
		create_pointer();
		global.pointeron = true
	}
	
	//moves the pointer 
	else if not (keyboard_check(vk_enter) or keyboard_check(vk_space)) and (press_left() or press_right() or press_up() or press_down()) {
		pointer_controls()	
	}
	
	//else if (room == rm_game_multioption or room == rm_game_singoption or room == rm_settings) and (keyboard_check(vk_space) or keyboard_check(vk_enter)) activate_pointer_option();
	
	//activates the pointer if it exists
	else if (press_space() or press_enter()) activate_pointer();

	/////////Mouse Controls/////////////
	
	
	//If the mouse button is released, settings related to having the mouse button held are reset

	//Controls related to exiting the game mode, or the game itself: hold the button if in touch mode to exit
	else if (position_meeting(mouse_x,mouse_y,obj_game_exit) and mouse_check_button_pressed(mb_left) and not global.touchmode) game_exit();
	
	else if (position_meeting(mouse_x,mouse_y,obj_game_exit) and mouse_check_button_pressed(mb_left) and global.touchmode) with obj_game_exit alarm[0] = game_get_speed(gamespeed_fps)


	//all miscelaneous mouse controls
	
	else mouse_controls()
}
	


