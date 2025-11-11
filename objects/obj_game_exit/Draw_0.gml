/// @description Insert description here
// You can write your code in this editor

draw_self()
if alarm[0] > 0{
	draw_set_color(c_white)
	draw_rectangle(x-sprite_width,y+sprite_height+3,x,y+sprite_height+9,true)

	draw_set_color(c_lime)
	draw_rectangle(x-sprite_width+1,y+sprite_height+4,x-1-sprite_width*(alarm[0]/game_get_speed(gamespeed_fps)),y+sprite_height+8,false)
}