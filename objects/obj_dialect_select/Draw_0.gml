/// @description Insert description here
// You can write your code in this editor

if label == global.dialect draw_sprite_ext(sprite_index,0,x,y,1,1,0,c_teal,1)
else draw_self()

draw_set_font(global.pointfont);
draw_set_valign(fa_middle)
draw_set_halign(fa_center)
draw_set_color(c_black)

draw_text(x,y,label)