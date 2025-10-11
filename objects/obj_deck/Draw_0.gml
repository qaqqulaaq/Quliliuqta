/// @description Insert description here
// You can write your code in this editor
var _deckheight = ceil(array_length(deck_list)/10);
draw_sprite(sprite_index,_deckheight,x,y)


var _sc = global.winscale
//if alarm[2] <= 0
{
	draw_set_color(c_black)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(global.cardtextfont)
	draw_text(x+_sc*(3-_deckheight),y+_sc*(35-_deckheight),gametext);



	draw_set_font(global.pointfont)
	draw_text(x+_sc*(3-_deckheight),y+sprite_height-_sc*(30+_deckheight), string(disp_deck))
}
