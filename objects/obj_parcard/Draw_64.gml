/// @description Draw Fonts in Gui for better resolution
// You can write your code in this editor
/*
var _text = global.numname[val]
var _sc = global.winscale

draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

if !drawn {
	draw_set_font(fnt_cardtext_html)
	var _warp = alarm[1]*4/(game_get_speed(gamespeed_fps))
	draw_text_transformed(_sc*x,_sc*(y)+35,obj_deck.gametext,_warp,1,0)
}

else if !set{
	var _warp = 1-alarm[1]*4/(game_get_speed(gamespeed_fps))

	draw_set_font(fnt_cardnum_html);
	if val == 20 draw_text_transformed(_sc*x,_sc*(y+5),K20,_warp,1,0);
	else draw_text_transformed(_sc*x,_sc*(y+5),chr(KB + val),_warp,1,0);
	var _textheight = string_height(KB + 19)+5

	draw_set_font(fnt_cardtext_html)
	draw_text_transformed(_sc*x,_sc*y+_textheight,_text,_warp,1,0);

	
}

else {
	
	draw_set_font(fnt_cardnum_html);
	if val == 20 draw_text(_sc*x,_sc*(y+5),K20);
	else draw_text(_sc*x,_sc*(y+5),chr(KB + val));
	var _textheight = string_height(KB + 19)+5

	draw_set_font(fnt_cardtext_html)
	draw_text(_sc*x,_sc*y+_textheight,_text);
}

*/