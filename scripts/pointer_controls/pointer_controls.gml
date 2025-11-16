// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function pointer_controls(){
	
	with obj_pointer{
	
		switch room{
			////main menu
			case rm_game_select:
			{
				if press_down() move_pointer(true,true,2);		
				else if press_up() move_pointer(true,false,2);
				y = 512 + vpos*192;
				break;		
			}
			///////Game menu screens
			case rm_game_singoption:
			case rm_game_multioption:
			{
				//moves the poiner
				if press_right() {
					if room == rm_game_multioption and hpos == 0 {
						move_pointer(false,true,5)
						vpos = 1
					}
					else if (hpos == 1 and vpos == 0) repeat 3 move_pointer(false,true,5);
					else if (hpos == 2 and vpos == 0) or (hpos == 4 and (vpos < 3 or vpos == 4)) repeat 2 move_pointer(false,true,5);
					else if hpos = 3 and vpos > 0{
						hpos = 4;
						vpos = 4;
					}
					else move_pointer(false,true,5);

					if hpos = 0{
						if global.gamemode = "Tallimaliuqta!" vpos = 0
						else if global.gamemode = "Quliliuqta!" vpos = 1
						else if global.gamemode = "Iñuiññaliuqta!" vpos = 2
					}
					
					else if (hpos = 2 and vpos > 1) vpos = 1
					
					else if hpos = 3 and vpos > 0 vpos = 4
					
				}
				
				else if press_left() {
					//handles the initial movement
					if (hpos == 3 and vpos == 0) repeat 3 move_pointer(false,false,5);
					else if (hpos == 2 and vpos == 0) or (hpos == 5 and (vpos < 3 or vpos == 4)) repeat 2 move_pointer(false,false,5);
					else move_pointer(false,false,5);
					//moved based on the previous block
					if hpos = 0{
						if global.gamemode = "Tallimaliuqta!" vpos = 0;
						else if global.gamemode = "Quliliuqta!" vpos = 1;
						else if global.gamemode = "Iñuiññaliuqta!" vpos = 2;
					}
					
					else if (hpos = 2 and vpos > 1) vpos = 1;
					
					else if hpos = 3 and vpos < 4 {
						if room = rm_game_singoption vpos = 0;
						else vpos = 1
					}
					
				}

				else if press_down() {
					switch hpos{
						case 0: move_pointer(true,true,2); break;
						case 1: 
							if room == rm_game_multioption {
								if vpos < 3 move_pointer(true,true,3);
								else repeat 2 move_pointer(true,true,3);
							}
							else if room == rm_game_singoption move_pointer(true,true,2);
							break;
					
						case 2: 
						case 3: 
							if vpos > 0{
								vpos = 4; 
								hpos = 4;
							}
							else move_pointer(true,true,1);
							break
							
						case 4:
						case 5:
							if vpos == 2 and global.setgoal == "None" repeat 2 move_pointer(true,true,4);
							else move_pointer(true,true,4); 
							break
					}
				}
				
				else if press_up() {
					switch hpos{
						case 0: move_pointer(true,false,2); break;
						case 1: 
							if room == rm_game_multioption {
								if vpos < 1 move_pointer(true,false,3);
								else repeat 2 move_pointer(true,false,3);
							}
							else if room == rm_game_singoption move_pointer(true,false,2);
							break;
					
						case 2: 
						case 3: 
							if room == rm_game_singoption move_pointer(true,false,1); 
							else {
								move_pointer(false,true,5)
								move_pointer(true,true,4)
							}
							break
							
						case 4:
						case 5:
							if vpos == 4 and global.setgoal == "None" repeat 2 move_pointer(true,false,4); 
							else move_pointer(true,false,4); 
							break
					}
				}


			//move the cursor		
			
				if hpos == 0{
					x = 256 - (sprite_get_width(spr_deck_1080) div 2)
					y = 64 + vpos*320+(sprite_get_height(spr_deck_1080) div 2);
				}
				
				else if (hpos >= 1 and hpos <= 3) and vpos = 0{
					x = 960 - sprite_get_width(spr_game_select) div 2
					y = 288
				}
				
				else if hpos == 1{
					x = 768 - sprite_get_width(spr_end_button) div 2
					if room == rm_game_singoption {
						if vpos > 2 vpos = 2
						y = 704 + sprite_get_height(spr_end_button) div 2 + (vpos-1) * 132
					}
					else if room == rm_game_multioption {
						if vpos > 3 vpos = 3
						y = 704 + sprite_get_height(spr_end_button) div 2 + (vpos-1) * 96		
					}
				}
				
				else if hpos == 2{
					if vpos > 2 vpos = 2
					x = 1184 - sprite_get_width(spr_end_button) div 2
					y = 768 + sprite_get_height(spr_end_button) div 2
				}
				
				else if hpos == 3{
					if vpos > 1 vpos = 1
					x = 1376 - sprite_get_width(spr_end_button) div 2
					y = 768 + sprite_get_height(spr_end_button) div 2					
				}
				
				else if (hpos == 4 or hpos == 5) and vpos <=2{
					x = 1696 - sprite_get_width(spr_end_button) div 2
					y = 160 + 96*vpos + sprite_get_height(spr_end_button) div 2
				}
				
				else if hpos == 4 and vpos == 3 {
					x = 1600 - sprite_get_width(spr_end_button) div 2
					y = 544 + sprite_get_height(spr_end_button) div 2	
				}
				
				else if hpos == 5 and vpos == 3 {
					x = 1792 - sprite_get_width(spr_end_button) div 2
					y = 544 + sprite_get_height(spr_end_button) div 2	
				}
				
				else if (hpos == 4 or hpos == 5) and vpos == 4{
					x = 1792 - sprite_get_width(spr_end_button) div 2
					y = 960 + sprite_get_height(spr_end_button) div 2						
				}
						
				break;
			}	
		///////Single player Mode	
			case rm_game_sp:
			case rm_game_sp_tutorial:
			{
				//nothing happens if there are no cards out
				if instance_exists(obj_parcard){
				//If the position is on the deck, the pointer moves...	
					if hpos == 5{
					//to the leftmost card if the right button is pressed
						if press_right(){
							for (var _i = 0; _i < 15; _i++) if obj_deck.cardlist[_i] != -1{
								hpos = _i mod 5
								vpos = _i div 5
								break;
							}
						}
						
					//to the rightmost card if the right button is pressed	
						else if press_left(){
							for (var _i = 14; _i >=0 ; _i--) if obj_deck.cardlist[_i] != -1{
								hpos = _i mod 5
								vpos = _i div 5
								break;
							}
						}
						
						if hpos != 5{
							x = 60*global.winscale + 90*global.winscale*hpos - sprite_get_width(spr_blank_1080) div 2;
							y = 30*global.winscale + 105*global.winscale*vpos + sprite_get_height(spr_blank_1080) div 2;						
						}
						
					}
					//otherwise, the pointer moves to the next appropriate card
					else{
						
					//The vertical scale selects a card if another one is in the column
						if press_down() {
							do move_pointer(true,true,2) 
							until obj_deck.cardlist[hpos+vpos*5] != -1

						}
							
						else if press_up() {
							do move_pointer(true,false,2)
							until obj_deck.cardlist[hpos+vpos*5] != -1
						}
				
						if press_right() {
			
							while hpos < 5{
								
							//just move the pointer if it will go to the deck	
								hpos++
								if hpos == 5 break;
								
								else{
									
									if obj_deck.cardlist[hpos+vpos*5] != -1 break;
									if vpoint_check_sp() break;
								}			
							}
						}	
						
						else if press_left() {
							while hpos >= 0{
								
							//just move the pointer if it will go to the deck	
								hpos--
								if hpos < 0 {
									hpos = 5
									break;
								}
								
								else{
									if obj_deck.cardlist[hpos+vpos*5] != -1 break;
									if vpoint_check_sp() break;
								}			
							}
						}
					}
				
					if hpos < 5{
						x = 60*global.winscale + 90*global.winscale*hpos - sprite_get_width(spr_blank_1080) div 2;
						y = 30*global.winscale + 105*global.winscale*vpos + sprite_get_height(spr_blank_1080) div 2;
					}
					
					else{
						x = obj_deck.x - obj_deck.sprite_width div 2;
						y = obj_deck.y + obj_deck.sprite_height div 2;	
					}
				
				}
				break;
			}
			case rm_game_mp:
			{
				var _drawn = false
				with obj_draw_button {if has_drawn and player_active _drawn = true}
				if instance_exists(obj_parcard) and _drawn{
					if press_up(){
						if vpos == 2{
							for (var _i = 7; _i < 14; _i++){
								if obj_deck.cardlist[_i] != -1{
									vpos = 1;
									hpos = _i mod 7;
									break;
								}
							}
						
							if vpos == 2 for (var _i = 0; _i < 7; _i++){
								if obj_deck.cardlist[_i] != -1{
									vpos = 0;
									hpos = _i mod 7;
									break;
								}
							}
						}
						else if vpos == 1{
							
							if obj_deck.cardlist[hpos] != -1 vpos--
							
							else{
								for (var _i = 0; _i < 7; _i++){
									if obj_deck.cardlist[_i] != -1{
										vpos = 0;
										hpos = _i mod 7;
										break;
									}
								}
								if vpos == 1 vpos = 2
							}
		
						}
						else{
							vpos = 2
							var _draw;
							with obj_draw_button if player_active _draw = id
							if !(_draw.has_drawn) hpos = 0
							else hpos = 1								
						}						
					}
					else if press_down(){
						if vpos == 2{
							for (var _i = 0; _i < 7; _i++){
								if obj_deck.cardlist[_i] != -1{
									vpos = 0;
									hpos = _i mod 7;
									break;
								}
							}
						
							if vpos == 2 for (var _i = 7; _i < 14; _i++){
								if obj_deck.cardlist[_i] != -1{
									vpos = 1;
									hpos = _i mod 7;
									break;
								}
							}
						}
						
						else if vpos == 0{
							if obj_deck.cardlist[hpos+7] != -1 vpos++
							else{
								for (var _i = 7; _i < 14; _i++){
									if obj_deck.cardlist[_i] != -1{
										vpos = 1;
										hpos = _i mod 7;
										break;
									}
								}
								if vpos == 0{
									vpos = 2
									var _draw;
									with obj_draw_button if player_active _draw = id
									if !(_draw.has_drawn) hpos = 0
									else hpos = 1	
								}
							}
						}
						else{
							vpos = 2
							var _draw;
							with obj_draw_button if player_active _draw = id
							if !(_draw.has_drawn2) hpos = 0
							else hpos = 1								
						}
					}
					
					else if press_right(){
						
						if vpos == 2 with obj_draw_button {
							if player_active and has_drawn and !has_drawn2 move_pointer(false,true,1);
						}
						
						else{
							var _h = hpos
							move_pointer(false,true,6)
							while (hpos != _h and obj_deck.cardlist[vpos*7 + hpos] == -1) move_pointer(false,true,6);
						}
					}
					
					else if press_left(){
						if vpos == 2 with obj_draw_button {
							if player_active and has_drawn and !has_drawn2 move_pointer(false,false,1);
						}
							
							
						else{
							var _h = hpos
							move_pointer(false,false,6)
							while (hpos != _h and obj_deck.cardlist[vpos*7 + hpos] == -1) move_pointer(false,false,6)
						}						
						
					}
					
					//move the cursor after all of that work
					if vpos = 2 with obj_draw_button{
						if player_active{
							if obj_pointer.hpos = 1 with end_id {
								obj_pointer.x = x - sprite_width div 2
								obj_pointer.y =  y + sprite_height div  2
							}
					
							else if obj_pointer.hpos = 0{
								obj_pointer.x = x - sprite_width div 2
								obj_pointer.y =  y + sprite_height div  2						
							}
						}
					}
					else{
						x = 80 * (hpos+1)*global.winscale - sprite_get_width(spr_blank_1080) div 2;
						y = 32*global.winscale + vpos * 96*global.winscale + sprite_get_height(spr_blank_1080) div 2 ;
					}				
				}
				break;
			}
			case rm_settings:
			{
				if press_down() {
					if hpos > 0 move_pointer(true,true,2);
					else move_pointer(true,true,3);
				}
				else if press_up() {
					if hpos > 0 move_pointer(true,false,2);
					else move_pointer(true,false,3);
				}
				
				else if press_left(){
					move_pointer(false,false,2);					
					if hpos == 0 {
						
						switch global.dialect{
							case "North Slope Coastal": vpos = 0; break;
							case "Wainwright": vpos = 1; break;
							case "Anaktuvuk Pass": vpos = 2; break;
							case "Point Hope": vpos = 3; break;
						}
					}
					else if hpos == 2 vpos = 0;
				}
				else if press_right(){
					move_pointer(false,true,2);					
					if hpos == 0 {
						switch global.dialect{
							case "North Slope Coastal": vpos = 0; break;
							case "Wainwright": vpos = 1; break;
							case "Anaktuvuk Pass": vpos = 2; break;
							case "Point Hope": vpos = 3; break;
						}
					}
					else if hpos == 1 vpos = 0;
				}
				
				if hpos == 0{
					x = 480 - sprite_get_width(spr_game_select) div 2
					y = 288 + vpos*192
				}
				
				else {
					x = 1216 + (hpos-1)*160 - sprite_get_width(spr_end_button) div 2
					y = 256 + vpos*288 + sprite_get_height(spr_end_button) div 2
				}
				
			break;
			}
		}
	}
}

function press_left(){
	
	
	
	if array_length(obj_controller.devices) == 0 return keyboard_check_pressed(vk_left)
	
	else {
		var _dev = 0
		if room == rm_game_mp  and obj_deck.turn > -1 and array_length(obj_controller.devices) >= obj_deck.turn+1 _dev = obj_deck.turn
		var _ax = 0
		var _dz = 0.5
		if obj_controller.tilt_h[_dev] < 2 _ax = gamepad_axis_value(obj_controller.devices[_dev],gp_axislh)
		if _ax < _dz*-1 obj_controller.tilt_h[_dev]++
		return keyboard_check_pressed(vk_left) or gamepad_button_check_pressed(obj_controller.devices[_dev],gp_padl) or (_ax < _dz*-1);
	}
}

function press_right(){

	if array_length(obj_controller.devices) == 0 return keyboard_check_pressed(vk_right)
	else{
		var _dev = 0
		if room == rm_game_mp  and obj_deck.turn > -1 and array_length(obj_controller.devices) >= obj_deck.turn+1 _dev = obj_deck.turn
		var _ax = 0
		var _dz = 0.5
		if obj_controller.tilt_h[_dev] < 2 _ax = gamepad_axis_value(obj_controller.devices[_dev],gp_axislh)
		if _ax > _dz obj_controller.tilt_h[_dev]++
		return keyboard_check_pressed(vk_right) or gamepad_button_check_pressed(obj_controller.devices[_dev],gp_padr) or (_ax > _dz)
	}
}

function press_up(){
	if array_length(obj_controller.devices) == 0 return keyboard_check_pressed(vk_up)
	else{
		var _dev = 0
		if room == rm_game_mp and obj_deck.turn > -1 and array_length(obj_controller.devices) >= obj_deck.turn+1 _dev = obj_deck.turn
		var _ax = 0
		var _dz = 0.5
		if obj_controller.tilt_v[_dev] < 2 _ax = gamepad_axis_value(obj_controller.devices[_dev],gp_axislv)
		if _ax < _dz*-1 obj_controller.tilt_v[_dev]++
		return keyboard_check_pressed(vk_up) or gamepad_button_check_pressed(obj_controller.devices[_dev],gp_padu) or (_ax < _dz*-1)
	}
}

function press_down(){
	if array_length(obj_controller.devices) == 0 return keyboard_check_pressed(vk_down)
	else{
		var _dev = 0
		if room == rm_game_mp  and obj_deck.turn > -1 and array_length(obj_controller.devices) >= obj_deck.turn+1 _dev = obj_deck.turn
		var _ax = 0
		var _dz = 0.5
		if obj_controller.tilt_v[_dev] < 2 _ax = gamepad_axis_value(obj_controller.devices[_dev],gp_axislv)
		if _ax > _dz obj_controller.tilt_v[_dev]++
		return keyboard_check_pressed(vk_down) or gamepad_button_check_pressed(obj_controller.devices[_dev],gp_padd) or (_ax > _dz)
	}
}

function press_space(){
	var _dev = 0
	if room == rm_game_mp  and obj_deck.turn > -1 and array_length(obj_controller.devices) >= obj_deck.turn+1 _dev = obj_deck.turn
	if array_length(obj_controller.devices) == 0 return keyboard_check_pressed(vk_space)
	else return keyboard_check_pressed(vk_space) or gamepad_button_check_pressed(obj_controller.devices[_dev],gp_face1) or gamepad_button_check_pressed(obj_controller.devices[_dev],gp_face2)
}

function press_enter(){
	var _dev = 0
	if room == rm_game_mp  and obj_deck.turn > -1 and array_length(obj_controller.devices) >= obj_deck.turn+1 _dev = obj_deck.turn
	if array_length(obj_controller.devices) == 0 return keyboard_check_pressed(vk_enter)
	else return keyboard_check_pressed(vk_enter) or gamepad_button_check_pressed(obj_controller.devices[_dev],gp_face4)
}

function press_shift(){
	var _dev = 0
	if room == rm_game_mp  and obj_deck.turn > -1 and array_length(obj_controller.devices) >= obj_deck.turn+1 _dev = obj_deck.turn
	if array_length(obj_controller.devices) == 0 return keyboard_check_pressed(vk_shift)
	else return keyboard_check_pressed(vk_shift) or gamepad_button_check_pressed(obj_controller.devices[_dev],gp_face3)	
}


function press_exit(){
	if array_length(obj_controller.devices) == 0 return keyboard_check_pressed(vk_escape);
	else return keyboard_check_pressed(vk_escape) or gamepad_button_check_pressed(obj_controller.devices[0],gp_start);
}

function press_any(){
	return press_up() or press_down() or press_left() or press_right() or press_space() or press_enter() or press_shift();	
}