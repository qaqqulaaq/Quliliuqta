/// @description Insert description here
// You can write your code in this editor

//if the game mode is single player, draw the border
if room = rm_game_sp{
	var _sc = global.winscale

	draw_set_font(global.pointfont)
	draw_set_color(c_white)
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	



	draw_line(room_width*3 div 4, -25*_sc, room_width*3 div 4, room_height+25*_sc)
//draw the points for the single player
	draw_text(room_width * 3 div 4+_sc*16, _sc*32, "Points: "+string(disp_pts) + "\nComputer: " + string(comp_disp_pts))
	draw_text(_sc*room_width * 7 div 8, 32+string_height("Points:"), string(disp_pts))
	
	//draw_text(5,5,string(val_selected));  for debugging card value issues
}

if game_over{
	var _text;
	
	if room = rm_game_sp {
		if solo_pts > comp_pts _text = "You win!"
		else if solo_pts == comp_pts _text = "It's a tie!"
		else _text = "Computer Wins!"
		
	}
	else if room == rm_game_mp {
		if winner = "Tie" _text = "It's a tie!"
		else _text = winner + " wins!"
	}
	
	draw_dialog_box(_text)
}