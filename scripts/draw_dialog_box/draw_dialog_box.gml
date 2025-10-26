// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_dialog_box(_text){
	var _left = room_width div 4
	var _right = room_width * 3 div 4
	var _top = room_height div 4
	var _bottom = room_height *3 div 4
	
	draw_set_alpha(0.8)
	draw_set_color(c_blue)
	draw_rectangle(_left,_top,_right,_bottom,false)
	
	draw_set_alpha(1)
	draw_set_color(c_white)
	draw_line_width(_left, _top, _right, _top, 5 * global.winscale)
	draw_line_width(_left, _top, _left, _bottom, 5 * global.winscale)
	draw_line_width(_left, _bottom, _right, _bottom, 5 * global.winscale)
	draw_line_width(_right, _top, _right, _bottom, 5 * global.winscale)
	
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	draw_set_font(global.pointfont)
	
	draw_text(_left+global.winscale*5, _top+global.winscale*5, _text)
}