/// @description Insert description here
// You can write your code in this editor

if sprite_timer = 7 and global.gametimer <= 0 draw_sprite(sprite_index,3,x,y)
else draw_sprite(sprite_index,sprite_timer div 2,x,y)

if timer_dir == 1 and sprite_timer < 7 sprite_timer++
else if timer_dir == -1 and sprite_timer > 0 sprite_timer--

draw_set_font(global.pointfont)
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_text(x,y+sprite_height div 2,label);