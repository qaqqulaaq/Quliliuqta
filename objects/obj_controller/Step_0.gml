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

if !mouse_check_button(mb_left) with obj_parcard just_pressed = false;

if mouse_check_button_pressed(mb_left){
	with obj_pointer instance_destroy();
	global.pointeron = false	
}

if !(keyboard_check(vk_escape) or (array_length(devices) > 0 and gamepad_button_check(devices[0],gp_start)) or mouse_check_button(mb_left)) with obj_game_exit alarm[0] = -1;



if (room == rm_game_mp or room == rm_game_sp) and obj_deck.game_over {
	if mouse_check_button_pressed(mb_any) or press_any() or press_exit() with obj_game_exit game_exit();
}

else {
	
	///////Keyboard Controls/////////////
	
	//exits the room or game
	
	if press_exit() and (room == rm_settings or room == rm_game_singoption or room == rm_game_multioption) game_exit();
	
	else if press_exit() with obj_game_exit alarm[0] = game_get_speed(gamespeed_fps)
	
	
	//activates the deck, even if there is no pointer object
	else if (room == rm_game_sp or room == rm_game_mp or room == rm_game_mp_online) and press_enter() deck_event();
	
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
	else if (position_meeting(mouse_x,mouse_y,obj_game_exit) and mouse_check_button_pressed(mb_left) and (room == rm_settings or room == rm_game_singoption or room == rm_game_multioption)) game_exit();
	
	else if (position_meeting(mouse_x,mouse_y,obj_game_exit) and mouse_check_button_pressed(mb_left)) with obj_game_exit alarm[0] = game_get_speed(gamespeed_fps)


	//all miscelaneous mouse controls
	
	else mouse_controls()
}
	


