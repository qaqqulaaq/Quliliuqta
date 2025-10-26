/// @description Insert description here
// You can write your code in this editor

//if the game mode is single player, draw the border

	var _sc = global.winscale

	draw_set_font(global.pointfont)
	draw_set_color(c_white)
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	



	draw_line(room_width*3 div 4, -25*_sc, room_width*3 div 4, room_height+25*_sc)
//draw the points for the single player
	draw_text(room_width * 3 div 4+_sc*16, _sc*32, "Points: "+string(disp_pts))
	draw_text(_sc*room_width * 7 div 8, 32+string_height("Points:"), string(disp_pts))
	//draw_text(5,5,string(stage))
/*
	for (var _i = 0; _i < array_length(numword); _i++){
		draw_text(5,5+string_height(numword[_i])*_i,numword[_i])	
	}
*/

var _text = ""
var _sum = 0

if error {
	
	with obj_parcard_tutorial if selected _sum += val
	
	switch stage{
	
	
		case 14: _text = "Choose all of the cards to add\nthem up!\n\nClick the cards to choose them." break;
	
		case 31: 
			if _sum > 10 _text = $"These cards add up to {string(_sum)}, but we\nonly want the cards to add up to 10.\nYou can click on the "+K05+" again to\nignore it."
			else if _sum = 0 _text = "Choose some cards, then click\non the deck to see if they add\nup to 10!"
			else if _sum < 10 _text = $"These cards only add up to {string(_sum)}.\nClick more cards to get them to add\nup to 10." 
			break;

		case 41:
			if _sum == 10 _text = "These cards add up to 10, but don't\nforget the " + K00+ "!"
			else _text = "Choose all of the cards to add\nthem up!\n\nClick the cards to choose them."
			break;
		
		case 56:
			if _sum == 0 _text = "There are enough cards to add up\n to "+K10+"! Try choosing some and\nclick on the deck again!"
			else _text =  $"These cards only add up to {string(_sum)}."
			break;
		
		case 75:
			_text = "Click on the " + K10+ " card!"
			break;
		
		default:
			if _sum == 0 _text =  "Choose some cards, then click\non the deck to see if they add\nup to 10!"
			else _text = $"This adds up to {string(_sum)}.\n\nYou might need to change which cards you choose."
			break;
	}
}




else switch stage {
	
	case 1: _text = $"Welcome to Quliliuqta, the game\nwhere you collect cards that add\nup to " +K10+" (10).\n\nClick on the deck to draw a card,\nor hold the X in the top right\nto exit."; break;
	
	case 4: _text = "You drew " + K01 + $", {numword[1]}! It has 1 line,\nand it's worth 1.\n\nWe're going to need a lot more\nthan that, so draw again."; break;
	
	case 7: _text = $"You drew " + K05+ $", {numword[5]}! It also has\n1 line, but it's sideways so it's\nworth 5.\n\nWe still need more, so draw again."; break;
	
	case 10: _text = $"You drew " + K02 + $", {numword[2]}! It has 2 lines,\nand is worth 2.\n\nWe're getting close! Maybe we'll\nhave 10 when we draw again!"; break;
	
	case 13: _text= $"It's another {numword[2]}! All of those\ncards add up to 10!\n\nClick anywhere to close this\nwindow, then click on all of the\ncards to choose them!"; break;
	
	case 15: _text= $"These cards all add up to "+ K10+"!\nNow click on the deck again\nto collect them!"; break;
	
	case 18: _text = $"You get 1 point for every card you\ncollect.\n\nYou collected 4 cards, so now you\nhave " + K04 + " points! Click the deck to\ndraw again."; break;
	
	case 21: _text = $"It's " + K04 + $", {numword[4]}, just like your\npoints! It has 4 lines, and is worth 4\ntowards making " +K10+ " (10)!\n\nKeep drawing!"; break;
	
	case 24: _text = $"You drew "+ K03 + $", {numword[3]}! It has 3 lines\nand is worth 3!\n\nKeep drawing!"; break;
	
	case 27: _text = $"This {numword[5]} brings the total to " +K12+",\nor 12.\n\nThat's a bit too much, so we need\nto keep drawing."; break;
	
	case 30: _text = $"This new {numword[3]} will bring us\nto " +K10 + $"! Click both of the {numword[3]}\ncards and that {numword[4]} card, then\nclick the deck!\n\nWe'll leave the {numword[5]} alone for\nnow."; break; 
	
	case 34: _text = $"That's another "+K03+" points, bring us\nto " + K07 + ", or 7! It's kind of like we put\na "+K05+" and a "+K02+" together, isn't it?\n\nKeep drawing!" break;
	
	case 37: _text = $"That's {numword[0]}, or 0! It doesn't\nadd to your total when you're\nmaking "+K10+", but it gives you an \nextra point. Don't forget to grab\nthem when you see them!\n\nKeep drawing!" break;
	
	case 40: _text = $"That's another {numword[5]}! Notice\nhow "+K10+" is made up of two "+K05+"?\n\nGrab them both, and don't forget\nthe "+K00+"!"; break; 
		
	case 44: 
		_text = "Keep drawing until you find\nmore cards that make " +K10+ "!\n" 	
		if !global.touchmode _text += "If you hold the left mouse button\nand drag the cursor across the\ncards you want, you can choose\nthem quickly!"
		else _text += "If you drag across the cards you\nwant, you can choose them quickly!"
		break;
		
	case 59: _text = "Next, let's look at some bigger\ncards.\n\nClick the deck to draw!" break;
	
	case 62: _text = $"This is "+K06+$", {numword[6]}! It's made\nwith a " +K05+" and a "+K01+", and adds up to 6!\nAdd "+K04+ " to it!\n\nDraw again!"; break;
	
	case 65: _text = $"This is "+K07+$", {numword[7]}! It's\nmade with a " +K05+" and a "+K02+", and adds up\nto 7! Add "+K03+ " to it!\n\nDraw again!"; break;
	
	case 68: _text = $"This is "+K08+$", {numword[8]}! It's\nmade with a " +K05+" and a "+K03+", and adds up\nto 8! Add "+K02+ " to it!\n\nDraw again!"; break;
	
	case 71: _text = $"This is "+K09+$", {numword[9]}! It's just\nshort of "+K10+"! Add "+K01+ " to it!\n\nDraw again!"; break;
	
	case 74: _text = $"And this is "+K10+$", {numword[10]}! We've\nbeen trying to make this with other\ncards, but you can just grab this\none!\n\nClick it, then click on the deck!"; break;
	
	case 78: _text = "If 'VS Computer' is turned on,\nYou'll miss out on cards if you click\nthe deck when a match is possible!\n\nKeep building "+K10+"!"
	default: break;
	
	case 102: _text = "That's all for this tutorial!\n\nTo exit and start the game, hold\nthe X in the top right of the screen."
}

if _text != "" draw_dialog_box(_text)