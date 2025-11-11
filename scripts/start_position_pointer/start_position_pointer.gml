// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function start_position_pointer(){
	
	if room == rm_game_sp{	
		if hpos < 5{
			x = 60*global.winscale + 90*global.winscale*hpos - sprite_get_width(spr_blank_1080) div 2;
			y = 30*global.winscale + 105*global.winscale*vpos + sprite_get_height(spr_blank_1080) div 2;
		}
		else{
			x = obj_deck.x - obj_deck.sprite_width div 2;
			y = obj_deck.y + obj_deck.sprite_height div 2;			
		}
	}
	
	
}

//function start_position_vcheck(){
//	var _v = vpos
//	move_pointer(true,false,2)	
//	if !position_meeting(x+5,y,obj_parcard) while vpos != _v{
//		var _check = true
//		if position_meeting(x+5,y,obj_parcard) {
//			with instance_position(x+5,y,obj_parcard) _check = selected
//		}
//		if _check return false
//		else move_pointer(true,false,2)	
//		}
			
//	x = 60*global.winscale + 90*global.winscale*hpos - sprite_get_width(spr_blank_1080) div 2;
//	y = 30*global.winscale + 105*global.winscale*vpos + sprite_get_height(spr_blank_1080) div 2;		
//	return true;
//}

