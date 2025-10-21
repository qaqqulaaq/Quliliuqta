/// @description Insert description here
// You can write your code in this editor

//Draw the correct frame of the deck sprite based on the number of cards remaining
	var _deckheight = ceil(array_length(deck_list)/10);
	draw_sprite(sprite_index,_deckheight,x,y)

//text font and image placement based on the window scale
	var _sc = global.winscale
	//Draw the name of the game
	draw_set_color(c_black)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(global.cardtextfont)
	draw_text(x+_sc*(3-_deckheight),y+_sc*(30-_deckheight),global.gamemode);


//draw the number goal 
//Changed from drawing the number left in the deck to limit confusion
	if _deckheight > 0{
		draw_set_font(global.cardnumfont)
		if global.gamegoal == 20  draw_text(x+_sc*(3-_deckheight),y+sprite_height-_sc*(40+_deckheight), K20)
		else draw_text(x+_sc*(3-_deckheight),y+sprite_height-_sc*(40+_deckheight), disp_deck)
		//else draw_text(x+_sc*(3-_deckheight),y+sprite_height-_sc*(40+_deckheight), chr(KB + global.gamegoal))
	}
	
//draw the timer based on the value of alarm[2]
if global.gametimer > 0{
	draw_set_font(global.pointfont)
	draw_set_valign(fa_top)
	if alarm[2] > 180 or alarm[2] <= 0 draw_set_color(c_white)
	else if alarm[2] > 0 draw_set_color(c_red)
	if alarm[2] > 0 draw_text(x,y+sprite_height,point_convert(ceil(1+alarm[2] div game_get_speed(gamespeed_fps))))
	else{
		if alarm[0] > 0 draw_text(x,y+sprite_height, K00)
		else draw_text(x,y+sprite_height,point_convert(global.gametimer))
		
	}	
}
	
