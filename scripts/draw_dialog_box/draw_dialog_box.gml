// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_dialog_box(_text){
	var _left = room_width div 4
	var _right = room_width * 3 div 4
	var _top = room_height div 4
	var _bottom = room_height *3 div 4
	var _x;
	var _y;
	
	draw_set_alpha(0.8)
	draw_set_color(c_blue)
	draw_rectangle(_left,_top,_right,_bottom,false)
	
	draw_set_alpha(1)
	draw_set_color(c_white)
	draw_line_width(_left, _top, _right, _top, 5 * global.winscale)
	draw_line_width(_left, _top, _left, _bottom, 5 * global.winscale)
	draw_line_width(_left, _bottom, _right, _bottom, 5 * global.winscale)
	draw_line_width(_right, _top, _right, _bottom, 5 * global.winscale)
	
	
	if game_over{
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		draw_set_font(global.cardnumfont)
		_x = room_width div 2
		_y = room_height div 2
	}
	
	else{
		draw_set_halign(fa_left)
		draw_set_valign(fa_top)
		draw_set_font(global.pointfont)
		_x = _left+global.winscale*5
		_y = _top+global.winscale*5
	}
	
	draw_text(_x, _y, _text)
}