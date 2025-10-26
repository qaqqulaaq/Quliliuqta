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
can_click = false
solo_pts = 0
disp_pts = K00
turn = -1
topped = false

tempmap = ""

alarm[0] = game_get_speed(gamespeed_fps)

stage = 0
error = false



numword = array_create(11,"")

for (var _i= 0; _i < array_length(numword); _i++){
	for (var _j = 0; _j < array_length(global.numnamearr[_i][0]); _j++){
		
		numword[_i] += global.numnamearr[_i][0][_j];
	}
	
	if array_length(global.numnamearr[_i]) > 1{
		numword[_i] += " "	
		for (var _j = 0; _j < array_length(global.numnamearr[_i][1]); _j++){
		
			numword[_i] += global.numnamearr[_i][1][_j];
		}		
	}
}


/*
//////Stage represents the stage in the tutorial////////
Stage 0- delay before the introduction
Stage 1- Introduction, including first deck click
Stage 2- Atausiq Card moves to position
Stage 3- Describes the card




*/