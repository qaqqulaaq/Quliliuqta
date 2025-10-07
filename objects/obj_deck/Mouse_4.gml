/// @description Insert description here
// You can write your code in this editor

if !check_card(){

	if array_length(deck_list) == 0 game_restart()
	
	else if instance_number(obj_parcard) < 8 draw_card(array_pop(deck_list));
	
	else {
		var _restock = [];
		with obj_parcard{
			array_push(_restock, val);
			instance_destroy(self);
		}
		deck_list = array_concat(deck_list,_restock)
		deck_list = array_shuffle(deck_list)
	}
	
	disp_deck = point_convert(array_length(deck_list))
}