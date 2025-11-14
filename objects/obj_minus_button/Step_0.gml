/// @description Insert description here
// You can write your code in this editor

var _check = (mouse_check_button(mb_left) and instance_position(mouse_x,mouse_y,self)) or keyboard_check(vk_space) or keyboard_check(vk_enter) or (array_length(obj_controller.devices) > 0 and gamepad_button_check(obj_controller.devices[0],gp_face1));

if !_check{
	alarm[0] = -1
	if (global.gametimer > 0 and setting == "timer") or (global.setgoal == "Points" and setting == "Points" and global.pointgoal > 5) or (global.setgoal == "Decks" and setting == "Decks" and global.deckgoal > 1) timer_dir = -1
	pressed = false
}