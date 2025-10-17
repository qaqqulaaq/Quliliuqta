/// @description Insert description here
// You can write your code in this editor

if global.gametimer > 0 {
	pressed = true
	timer_dir = 1
	sprite_timer = 0
		alarm[0] = game_get_speed(gamespeed_fps) div 3
	global.gametimer -= 5
}