/// @description Insert description here
// You can write your code in this editor

draw_sprite(sprite_index,6,x,y)

var _deckheight = 6;

var _sc = global.winscale
//if alarm[2] <= 0

	draw_set_color(c_black)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(global.cardtextfont)
	draw_text(x+_sc*(3-_deckheight),y+_sc*(35-_deckheight),mode_set);
