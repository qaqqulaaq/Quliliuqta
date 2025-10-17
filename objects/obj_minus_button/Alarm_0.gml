/// @description Insert description here
// You can write your code in this editor

if mouse_check_button(mb_left) and global.gametimer > 0{
	alarm[0] = game_get_speed(gamespeed_fps) div 3
	global.gametimer -= 5
}