// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_pointer(){
	switch room{
		case rm_game_select: 
			with obj_main_select if label == "Single Player" instance_create_layer(x- (sprite_width div 2), y,"Instances",obj_pointer); 
			break;
				
		case rm_game_sp:
		case rm_game_sp_tutorial:
			with obj_deck instance_create_layer(x-sprite_width div 2, y+sprite_height div 2, "Flying",obj_pointer,{hpos:5})
			break;
			
		
		case rm_game_mp:
				with obj_draw_button if player_active{
				if has_drawn2 with end_id instance_create_layer(x - sprite_width div 2, y + sprite_height div  2, "Flying", obj_pointer,{hpos: 1, vpos: 2})
				else instance_create_layer(x - sprite_width div 2, y + sprite_height div  2, "Flying", obj_pointer,{hpos: 0, vpos: 2})
			}
			break;
		
		case rm_game_singoption:
		case rm_game_multioption:
			instance_create_layer(1792 - sprite_get_width(spr_end_button) div 2, 960 + sprite_get_height(spr_end_button) div 2,"Instances",obj_pointer,{hpos: 4,vpos: 4})
			break;
			
		case rm_settings:
			with obj_dialect_select if global.dialect == label instance_create_layer(x- (sprite_width div 2), y,"Instances",obj_pointer);
		
	}
	
	
	
	with obj_pointer depth -= 1
}