/// @description Insert description here
// You can write your code in this editor

deck_list = []

for (var _i = 0; _i < 6; _i++){
	array_push(deck_list,0,1,1,2,2,3,3,4,4,5)
	//array_push(deck_list,0,0,1,1,1,1,2,2,2,3,3,3)
}

deck_list = array_shuffle(deck_list);


points = 0
disp_pts = chr(KB)

disp_deck = point_convert(array_length(deck_list))

num_selected = 0
val_selected = 0

winscale = 2