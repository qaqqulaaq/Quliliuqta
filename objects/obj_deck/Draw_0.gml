/// @description Insert description here
// You can write your code in this editor

	draw_sprite(sprite_index,ceil(array_length(deck_list)/20),x,y)

	draw_set_font(fnt_genkak)
	draw_set_color(c_white)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)

	draw_text(x,y-24, string(disp_deck))