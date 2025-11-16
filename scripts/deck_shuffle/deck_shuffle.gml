// Script assets have changed for v2.3.0 see
function deck_shuffle(_takeaway = []){

	if global.soundon audio_play_sound(snd_deck_shuffle,1,false)

	if array_length(_takeaway) == 0 with obj_parcard instance_destroy()

	val_selected = 0

	deck_list = []
	fail_counter = 0
	

	if room == rm_game_sp_tutorial repeat 4 array_push(deck_list,1,1,3,4,1,2,0,3,1,2,0,0,5,0,0)	;
	else if global.gamegoal == 5 {
		if global.minuscard{
			repeat 5 array_push(deck_list,0,1,1,1,2,2,3,3,4,5);
			array_push(deck_list,0,5);
			repeat 8 array_push(deck_list,"-");
		}
		else repeat 6 array_push(deck_list,0,1,1,1,2,2,3,3,4,5);
	}
	
	else if global.gamegoal == 10 {
		if global.minuscard{
			repeat 8 array_push (deck_list,"-")
			repeat 2 array_push(deck_list, 0,1,1,1,2,2,3,3,3,4,4,5,5,6,6,7,7,8,9,10);
			array_push(deck_list, 0,1,2,2,3,4,5,6,7,8,9,10)
		}
		
		else repeat 3 array_push(deck_list, 0,1,1,1,2,2,3,3,3,4,4,5,5,6,6,7,7,8,9,10);
	}
	
	else if global.gamegoal == 20 {
		if global.minuscard{
			repeat 8 array_push (deck_list,"-")
			array_push(deck_list, 0,1,1,2,2,3,3,4,4,5,5,5,5,6,7,8,9,10,10,11,12,13,14,15,15,16,17,18,19,20);
			array_push(deck_list, 0, 1, 2, 3, 4, 6, 7, 8, 9, 10, 15,  20)
		}
		
		else repeat 2 array_push(deck_list, 0,1,1,2,2,3,3,4,4,5,5,5,5,6,7,8,9,10,10,11,12,13,14,15,15,16,17,18,19,20);
	}
	
	for (var _i = 0; _i < array_length(_takeaway); _i++){
		var _index = array_get_index(deck_list,_takeaway[_i]);
		if _index != -1 array_delete(deck_list,_index, 1);
	}
	

	deck_list = array_shuffle(deck_list);
	
}