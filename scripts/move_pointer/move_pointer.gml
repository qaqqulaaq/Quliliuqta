// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function move_pointer(_vert,_inc,_max){
	with obj_pointer{
	//vertical movement
		if _vert{
		//move down
			if _inc{
				if vpos <  _max vpos++
				else vpos = 0	
			}
		//move up
			else {
				if vpos >  0 vpos--
				else vpos = _max
			}	
		}
		//horizontal movement	
		else{
		//move right
			if _inc{
				if hpos <  _max hpos++
				else hpos = 0	
			}
		//move left
			else {
				if hpos >  0 hpos--
				else hpos = _max
			}			
		}	
	}
}