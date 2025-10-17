/// @description Insert description here
// You can write your code in this editor

if global.winscale == 2 sprite_index = spr_deck_0720
else if global.winscale == 3 sprite_index = spr_deck_1080

timer_running = false
//Initialize the deck
deck_list = [];
fail_counter = 0;
deck_shuffle();
disp_deck = point_convert(array_length(deck_list))

turn = -1
alarm[0] = 10

tempmap = ""
