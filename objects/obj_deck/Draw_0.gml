/// @description Insert description here
// You can write your code in this editor
if room = rm_game{

	var _deckheight = ceil(array_length(deck_list)/10);
	draw_sprite(sprite_index,_deckheight,x,y)


	var _sc = global.winscale
	//if alarm[2] <= 0
	{
		draw_set_color(c_black)
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		draw_set_font(global.cardtextfont)
		draw_text(x+_sc*(3-_deckheight),y+_sc*(30-_deckheight),global.gamemode);



		draw_set_font(global.cardnumfont)
		draw_text(x+_sc*(3-_deckheight),y+sprite_height-_sc*(40+_deckheight), string(disp_deck))
	}

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
	
}