/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

//the card is still facing the back at this point
if !drawn {
	draw_set_font(global.cardtextfont)
	var _warp = alarm[1]*8/(game_get_speed(gamespeed_fps))
	draw_sprite_ext(sprite_index,0,x,y,_warp,1,0,c_white,1)
	draw_text_transformed(x,y+35,global.gamemode,_warp,1,0)
}
//the card has been flipped, so now it draws the text on the front
else if !set{
	var _warp = 1-alarm[1]*8/(game_get_speed(gamespeed_fps))
	draw_sprite_ext(sprite_index,0,x,y,_warp,1,0,c_white,1)
	draw_set_font(global.cardnumfont);
	//Operations cards have strings for val, other cards will get the number and convert it to a Kaktovik numeral 
	var _text
	if is_string(val) _text = val;
	else if val == 20 _text = K20;
	else _text = chr(KB + val);
	draw_text_transformed(x,y+5,_text,_warp,1,0);
	
	var _textheight = string_height(KB + 19)+5

	draw_set_font(global.cardtextfont)
	draw_card_text_transformed(x,y+_textheight,val,_warp,1,0);

	
}

else {
	//Draw the card with a shade based on various conditions
	var _check = false;
	//If cards can't be selected in multiplayer, draw them as transparent
	with obj_draw_button if player_active and !has_drawn _check = true
	
	if _check {
		draw_set_alpha(0.5)
		draw_sprite(sprite_index, 0, x, y)
		
		//draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, c_gray, 1)
	}
	
	
	//Draw the cards as teal if a correct number was selected or red if incorrect
	else if selected and hspeed == 0 and vspeed = 0 {
		var _color = $DDCC66//c_teal
		if (obj_deck.alarm[0] > 0 or obj_deck.alarm[1] > 0 or alarm[4] > 0) and obj_deck.won_round _color = c_lime	
		else if (obj_deck.alarm[0] > 0 or obj_deck.alarm[1] > 0 or alarm[4] > 0) _color = $3333DD
		
		//If a card is being subtracted, give a red tinge
		else if op == "-" or val == "-" _color = $AAAAFF
		
		draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, _color, 1);
		
		//if selected and there's a numeric value, draw operation signs
		if is_numeric(val){
			draw_set_color(c_white)

			if op == "+"{
				draw_line_width(x + sprite_width div 3 - 30,y + 40,x+sprite_width div 3 + 30,y + 40,10)
				draw_line_width(x + sprite_width div 3,y + 10,x+sprite_width div 3,y + 70,10)
			}
			else if op == "-" draw_line_width(x + sprite_width div 3 - 30,y + 40,x+sprite_width div 3 + 30,y + 40,10)
		
			draw_set_color(c_black)
		}
	}

	//If a card is being subtracted, give a red tinge and draw a subtraction sign over the number



	//If an operation card can't be selected, momentarily flash it as grey
	else if fail_timer > 0{
		draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, c_ltgray, 1);
		fail_timer -= 1	
	}
	

	
	//draw the card normally otherwise
	else draw_self();
	
	
	
	//Draw the card text
	draw_set_font(global.cardnumfont);
	var _text
	if is_string(val) _text = val;
	else if val == 20 _text = K20;
	else _text = chr(KB + val);
	draw_text(x,y+5,_text);
	
	
	
	//Draws the number of cards left in the deck
	var _textheight = string_height(KB + 19)+5

	draw_set_font(global.cardtextfont)
	draw_card_text(x,y+_textheight,val);
	draw_set_alpha(1)
}