/// @description Insert description here
// You can write your code in this editor


var _check = (mouse_check_button(mb_left) and instance_position(mouse_x,mouse_y,self)) or keyboard_check(vk_space) or keyboard_check(vk_enter);


if !_check{
	alarm[0] = -1
	if (global.gametimer < 120 and setting == "timer") or (global.setgoal == "Points" and setting == "Points" and global.pointgoal < 400) or (global.setgoal == "Decks" and setting == "Decks" and global.deckgoal < 30) timer_dir = -1
	pressed = false	
}
