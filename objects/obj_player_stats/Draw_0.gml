/// @description Insert description here
// You can write your code in this editor




draw_set_font(global.pointfont);

var _text = player_name + "\nScore: " +string(disp_score)

var _tx = string_width_ext(_text,-1,-1)
var _ty = string_height(_text)

if (player_active and room == rm_game_mp) or (room == rm_game_mp_online and obj_deck_online.turn == player_num){
	draw_set_color($ABDCC3)
	draw_set_alpha(0.5)
	draw_roundrect_ext(x- _tx div 2 - 50, y, x + _tx div 2 + 50, y + _ty,100,100, false)
}

draw_set_alpha(1)
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_white)
draw_text(x,y, _text);