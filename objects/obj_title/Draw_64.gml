/// @description Insert description here
// You can write your code in this editor



draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);


if room == rm_game_select {
	draw_set_font(fnt_title_3);
	draw_text(room_width div 2, 50 * global.winscale, "Quliliuqta!");
}



draw_set_font(global.pointfont);


if room == rm_game_multioption draw_text(768,600,"Players:")
else if room == rm_game_singoption draw_text(768,600,"VS Computer:")

if room == rm_game_singoption or room == rm_game_multioption{
	draw_text(1294,600,"Timer:");
	if global.gametimer <= 0 draw_text(1294, 680, "Off")

	else{
		draw_set_halign(fa_left)
		draw_text(1301,680,"sec")
	
		draw_set_halign(fa_right)
		draw_text(1291,680,point_convert(global.gametimer))
	}
	
	
	if global.setgoal == "Points" draw_text(1696, 448,  point_convert(global.pointgoal) + " Points")
	else if global.setgoal == "Decks" and global.deckgoal == 1 draw_text(1696, 448,  point_convert(global.deckgoal) + " Deck")
	else if global.setgoal == "Decks" draw_text(1696, 448, point_convert(global.deckgoal) + " Decks")
	
}

if room == rm_settings{
	
	draw_text(1294,600,"Touch Mode:");
	draw_text(480,384,"Dialect");
}