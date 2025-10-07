/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_genkak)
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)



draw_line(room_width*3 div 4, 0, room_width*3 div 4, room_height)

draw_text(room_width * 7 div 8, 32, "Points:")
draw_text(room_width * 7 div 8, 32+string_height("Points:"), string(disp_pts))