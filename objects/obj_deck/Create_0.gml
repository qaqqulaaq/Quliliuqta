/// @description Insert description here
// You can write your code in this editor

deck_list = []

for (var _i = 0; _i < 10; _i++){
	array_push(deck_list,0,1,1,2,2,3,3,4,4,5)
}

repeat (10){
deck_list = array_shuffle(deck_list);
}

points = 0
disp_pts = chr(KB)