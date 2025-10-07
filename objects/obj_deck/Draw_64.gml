/// @description Insert description here
// You can write your code in this editor

var _wo = 2

draw_set_font(fnt_genkak)
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)



draw_line(room_width*3*_wo div 4, 0, room_width*3*_wo div 4, room_height*_wo)

draw_text(room_width * 7*_wo div 8, 32*_wo, "Points:")
draw_text(room_width * 7*_wo div 8, 32*_wo+string_height("Points:"), string(disp_pts))