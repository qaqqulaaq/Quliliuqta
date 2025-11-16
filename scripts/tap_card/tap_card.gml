// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function tap_card(){

	if obj_deck.alarm[0] <= 0 and obj_deck.alarm[3] <= 0 and obj_deck.can_click{
		if set {			
			var _check = false
			with obj_draw_button {
				if has_drawn {
					_check = true; 
					break;
				}
			}
			if _check and room == rm_game_mp_online and global.onlinenum == obj_deck_online.turn send_selection(position,selected);
			else if room != rm_game_mp_online and (_check or room == rm_game_sp){		
				if selected {
					//unselects a card
					var _pos = sel_pos
					unselect_card()
					
					//unselect a card if the next card is a minus
					if array_length(obj_deck.sel_list) > _pos {
						var _id = obj_deck.sel_list[_pos]
						if !is_numeric(_id.val) with _id unselect_card()
					}
					//Make the next card operation go back to plus if it is not
					if array_length(obj_deck.sel_list) > _pos{
						var _id = obj_deck.sel_list[_pos]
						with _id op = "+"
					}
				}
				else {
					//Get the last card that was selected, if it exists
					var _id = noone
					if array_length(obj_deck.sel_list) > 0 _id = array_last(obj_deck.sel_list)
					//If the card is numeric, it can be selected
					if is_numeric(val) and (_id == noone or is_numeric(_id.val)) select_card() 
					
					//If the card is numeric and the previous card was not, the op on the card changes
					else if is_numeric(val) and !is_numeric(_id.val){
						select_card()
						op = _id.val
					}
					//If it's not, check to see that the array is not empty and that the val of the previous card is numeric
					else{
						if _id != noone and is_numeric(_id.val) select_card()	
						else fail_timer = game_get_speed(gamespeed_fps) div 10
					}
				}
			}
		}
	}
}

//Selects a card and adds it to the list
function select_card(){
	if global.soundon audio_play_sound(snd_tap_card,1,false);
	selected = true
	var _val = val;
	var _id = id
	with obj_deck{
		//val_selected += _val;		
		array_push(sel_list,_id)
	}
	sel_pos = array_length(obj_deck.sel_list) - 1
}

//Unselects a card and removes it from the list
function unselect_card(){
	selected = false
	op = "+"
	array_delete(obj_deck.sel_list,sel_pos,1);
	var _del_pos = sel_pos
	with obj_parcard if sel_pos > _del_pos sel_pos--
	sel_pos = -1
	//obj_deck.val_selected -= val;
}