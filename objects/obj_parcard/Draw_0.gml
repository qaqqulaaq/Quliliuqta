/// @description Insert description here
// You can write your code in this editor

var _text = global.numname[val]



if !drawn {
	var _warp = alarm[1]*4/(game_get_speed(gamespeed_fps))
	draw_sprite_ext(sprite_index,0,x,y,_warp,1,0,c_white,1)
}

else if !set{
	var _warp = 1-alarm[1]*4/(game_get_speed(gamespeed_fps))
	draw_sprite_ext(sprite_index,0,x,y,_warp,1,0,c_white,1)
}

else {	
	if selected {
		if obj_deck.alarm[1] > 0 draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, c_lime, 1);
		else draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, c_teal, 1);
	}
	else draw_self();
}






////////////////////////////////////////////////////////////////////////////
///////////////Original, combined pieces if necessary later/////////////////
////////////////////////////////////////////////////////////////////////////


/*
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

if !drawn {
	draw_set_font(fnt_cardtext_html)
	var _warp = alarm[1]*4/(game_get_speed(gamespeed_fps))
	draw_sprite_ext(sprite_index,0,x,y,_warp,1,0,c_white,1)
	draw_text_transformed(x,y+35,"Tallima-/nliuqta",_warp,1,0)
}

else if !set{
	var _warp = 1-alarm[1]*4/(game_get_speed(gamespeed_fps))

	draw_sprite_ext(sprite_index,0,x,y,_warp,1,0,c_white,1)
	draw_set_font(fnt_cardnum_html);
	if val == 20 draw_text_transformed(x,y+5,K20,_warp,1,0);
	else draw_text_transformed(x,y+5,chr(KB + val),_warp,1,0);
	var _textheight = string_height(KB + 19)+5

	draw_set_font(fnt_cardtext_html)
	draw_text_transformed(x,y+_textheight,_text,_warp,1,0);

	
}

else {
	
	if selected {
		if obj_deck.alarm[1] > 0 draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, c_lime, 1);
		else draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, c_teal, 1);
	}
	else draw_self();
	draw_set_font(fnt_cardnum_html);
	if val == 20 draw_text(x,y+5,K20);
	else draw_text(x,y+5,chr(KB + val));
	var _textheight = string_height(KB + 19)+5

	draw_set_font(fnt_cardtext_html)
	draw_text(x,y+_textheight,_text);
}
/*