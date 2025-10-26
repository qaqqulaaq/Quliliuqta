/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

if !drawn {
	draw_set_font(global.cardtextfont)
	var _warp = alarm[1]*8/(game_get_speed(gamespeed_fps))
	draw_sprite_ext(sprite_index,0,x,y,_warp,1,0,c_white,1)
	draw_text_transformed(x,y+35,global.gamemode,_warp,1,0)
}

else if !set{
	var _warp = 1-alarm[1]*8/(game_get_speed(gamespeed_fps))

	draw_sprite_ext(sprite_index,0,x,y,_warp,1,0,c_white,1)
	draw_set_font(global.cardnumfont);
	if val == 20 draw_text_transformed(x,y+5,K20,_warp,1,0);
	else draw_text_transformed(x,y+5,chr(KB + val),_warp,1,0);
	var _textheight = string_height(KB + 19)+5

	draw_set_font(global.cardtextfont)
	draw_card_text_transformed(x,y+_textheight,val,_warp,1,0);

	
}

else {
	
	var _lime = false
	
	switch obj_deck_sp_tutorial.stage{
		case 16:
		case 32:
		case 42:
		case 57:
		case 76:
		case 82:
		case 88:
		case 94:
		case 100:
			_lime = true;
			break;
	
	}
	
	
	if selected and _lime draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, c_lime, 1);
	
	else if selected draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, c_teal, 1);
	
	
	
	
	else draw_self();
	draw_set_font(global.cardnumfont);

	
	
	if val == 20 draw_text(x,y+5,K20);
	else draw_text(x,y+5,chr(KB + val));
	var _textheight = string_height(KB + 19)+5

	draw_set_font(global.cardtextfont)
	draw_card_text(x,y+_textheight,val);
	draw_set_alpha(1)
}

