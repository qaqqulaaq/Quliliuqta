/// @description Insert description here
// You can write your code in this editor

draw_set_font(global.cardnumfont);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

draw_text(room_width div 2, 50 * global.winscale, "Quliliuqta!");

draw_set_font(global.pointfont);
draw_text(768,600,"Players:")

draw_text(1294,600,"Timer:");


if global.gametimer <= 0 draw_text(1294, 680, "Off")

else{
	draw_set_halign(fa_left)
	draw_text(1301,680,"sec")
	
	draw_set_halign(fa_right)
	draw_text(1291,680,point_convert(global.gametimer))
	
	
}
