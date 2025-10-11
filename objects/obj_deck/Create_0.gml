/// @description Insert description here
// You can write your code in this editor

if global.winscale == 2 sprite_index = spr_deck_0720
else if global.winscale == 3 sprite_index = spr_deck_1080


deck_list = [];
fail_counter = 0;
goal = 5;

gametext = "Tallimaliuqta!";

//mode_change(5)

can_click = true;

deck_shuffle();


points = 0;
disp_pts = chr(KB);


disp_deck = point_convert(array_length(deck_list))

x = 555 * global.winscale
y = 240 * global.winscale