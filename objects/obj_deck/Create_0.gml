/// @description Insert description here
// You can write your code in this editor

if global.winscale == 2 sprite_index = spr_deck_0720
else if global.winscale == 3 sprite_index = spr_deck_1080

if room = rm_game_sp {
	x = 560*global.winscale
	y = 225*global.winscale
}

timer_running = false
//Initialize the deck
deck_list = [];
fail_counter = 0;
deck_shuffle();
disp_deck = point_convert(array_length(deck_list))

sp_remove = false
won_round = 0
can_click = true
solo_pts = 0
disp_pts = K00
turn = -1
topped = false
if room = rm_game_mp alarm[0] = 10

tempmap = ""
