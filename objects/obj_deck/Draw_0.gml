/// @description Insert description here
// You can write your code in this editor
var _deckheight = ceil(array_length(deck_list)/10);

draw_sprite(sprite_index,_deckheight,x,y)



draw_set_color(c_black)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_set_font(fnt_cardtext)
draw_text(x-_deckheight+3,y-_deckheight+35,"Talliliuqta!");



draw_set_font(fnt_genkak)
draw_text(x-_deckheight+3,y-_deckheight+sprite_height-30, string(disp_deck))
