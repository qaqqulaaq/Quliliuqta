/// @description Insert description here
// You can write your code in this editor

var _text = global.numname[val]

draw_set_font(fnt_cardnum);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

if !drawn draw_sprite_ext(spr_deck_old,1,x,y,alarm[1]/(3*game_get_speed(gamespeed_fps)),1,0,c_white,1)

else if !set draw_sprite_ext(sprite_index,0,x,y,1-alarm[1]/(3*game_get_speed(gamespeed_fps)),1,0,c_white,1)

else {
	
	if selected draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, c_teal, 1);
	else draw_self();
	
	if val == 20 draw_text(x,y+5,K20);
	else draw_text(x,y+5,chr(KB + val));
	var _textheight = string_height(KB + 19)+5

	draw_set_font(fnt_cardtext)
	draw_text(x,y+_textheight,_text);
}