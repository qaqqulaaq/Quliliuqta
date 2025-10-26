/// @description Insert description here
// You can write your code in this editor

//Draw the correct frame of the deck sprite based on the number of cards remaining
	var _deckheight = ceil(array_length(deck_list)/10);
	draw_sprite(sprite_index,_deckheight,x,y)

//text font and image placement based on the window scale
	var _sc = global.winscale
	//Draw the name of the game
	draw_set_color(c_black)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(global.cardtextfont)
	draw_text(x+_sc*(3-_deckheight),y+_sc*(30-_deckheight),"Quliliuqta!");


//draw the number goal 
//Changed from drawing the number left in the deck to limit confusion
	if _deckheight > 0{
		draw_set_font(global.cardnumfont)
		draw_text(x+_sc*(3-_deckheight),y+sprite_height-_sc*(40+_deckheight), K10)
		//else draw_text(x+_sc*(3-_deckheight),y+sprite_height-_sc*(40+_deckheight), disp_deck)
	}
	

