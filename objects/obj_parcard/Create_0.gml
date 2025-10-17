/// @description Insert description here
// You can write your code in this editor


if global.winscale == 2 sprite_index = spr_blank_0720
else if global.winscale == 3 sprite_index = spr_blank_1080

alarm[1] = game_get_speed(gamespeed_fps) div 4;
alarm[2] = game_get_speed(gamespeed_fps) div 2;

just_pressed = false