// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_card_10(){
	var _status = array_create(11,0)
	with obj_parcard{
		_status[val] += 1
	}
	
	if _status[10] >= 1{
		with obj_parcard if val == 0 or val == 10 selected = true
		with obj_deck clear_cards(0)
		return true;
	}
	
	if _status[9] >= 1 and _status[1] >= 1{
		with obj_00suitchuq selected = true;
		with obj_parcard{
	
		}
	}
}