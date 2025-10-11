/// @description Insert description here
// You can write your code in this editor

<<<<<<< Updated upstream
draw_set_font(fnt_genkak)
=======
var _sc = global.winscale

draw_set_font(global.pointfont)
>>>>>>> Stashed changes
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)


<<<<<<< Updated upstream
draw_line(room_width*3 div 4, 0, room_width*3 div 4, room_height)

draw_text(room_width * 7 div 8, 32, "Points:")
draw_text(room_width * 7 div 8, 32+string_height("Points:"), string(disp_pts))
=======
draw_line(room_width*3 div 4, 0, room_width*3 div 4, _sc*room_height)

draw_text(room_width * 3 div 4+_sc*16, _sc*32, "Points: "+string(disp_pts))
//draw_text(_sc*room_width * 7 div 8, 32+string_height("Points:"), string(disp_pts))

>>>>>>> Stashed changes
