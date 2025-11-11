// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function vpoint_check_sp(){
	var _v = vpos
									
	if vpos == 0 {
		move_pointer(true,true,2);
		y = 30*global.winscale + 105*global.winscale*vpos + sprite_get_height(spr_blank_1080) div 2;
		while vpos != _v {
			if position_meeting(x+5,y,obj_parcard) break;
			move_pointer(true,true,2)
			y = 30*global.winscale + 105*global.winscale*vpos + sprite_get_height(spr_blank_1080) div 2;
												
		}
	}
									
	else {
		move_pointer(true,false,2);
		y = 30*global.winscale + 105*global.winscale*vpos + sprite_get_height(spr_blank_1080) div 2;
		while vpos != _v {
			if position_meeting(x+5,y,obj_parcard) break;
			move_pointer(true,false,2)
			y = 30*global.winscale + 105*global.winscale*vpos + sprite_get_height(spr_blank_1080) div 2;
												
		}
	}
}