// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_card_5(){
	var _status = array_create(6,0)
	with obj_parcard{
		_status[val] += 1
	}
	
	
	
	////Starts by looking for the largest card, then moves down
	if _status[5] >= 1 {
		comp_select([0,0,0,0,1])
		return true;
	}
	//Needs both a 4 and a 1 to take the cards
	if _status[4] >= 1{
		if _status[1] >= 1{
			comp_select([1,0,0,1])
			return true;			
		}
	}
	//Will prioritize the higher point count
	if _status[3] >= 1 {
		if _status[1] >= 2{
			comp_select([2,0,1])
			return true;
		}
		else if _status[2] >= 1{
			comp_select([0,1,1])
			return true;
		}
	}
	//Will prioritize the higher point count
	if _status[2] >= 1{
		if _status[1] >= 3{
			comp_select([3,1])
			return true;
		}
		else if _status[2] >=2 and _status[1] >= 1{
			comp_select([1,2])
			return true;
		}
	}
	
	if _status[1] >= 5{
		comp_select([5])
		return true;
	}
}