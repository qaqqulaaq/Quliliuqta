/// @description Insert description here
// You can write your code in this editor



var _deckheight = ceil(array_length(deck_list)/10);
var _sc = global.winscale

draw_set_font(fnt_genkak_html)
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)


draw_line(_sc*room_width*3 div 4, 0, _sc*room_width*3 div 4, _sc*room_height)

draw_text(_sc*room_width * 7 div 8, 32, "Points:")
draw_text(_sc*room_width * 7 div 8, 32+string_height("Points:"), string(disp_pts))

if alarm[2] <= 0{
	draw_set_color(c_black)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_cardtext_html)
	draw_text(_sc*(x-_deckheight+3),_sc*(y-_deckheight+35),gametext);



	draw_set_font(fnt_genkak_html)
	draw_text(_sc*(x-_deckheight+3),_sc*(y-_deckheight+sprite_height-30), string(disp_deck))
}