/// @description Insert description here
// You can write your code in this editor

if !drawn draw_sprite_ext(spr_deck,1,x,y,alarm[1]/game_get_speed(gamespeed_fps),1,0,c_white,1)

else if !set draw_sprite_ext(sprite_index,0,x,y,alarm[1]/game_get_speed(gamespeed_fps),1,0,c_white,1)

else if selected draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, c_teal, 1)
else draw_self()