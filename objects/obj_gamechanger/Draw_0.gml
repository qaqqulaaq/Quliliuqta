/// @description Insert description here
// You can write your code in this editor


if mode_set != global.gamemode and gamechange_alpha > 0.5 gamechange_alpha -= 0.05
else if mode_set = global.gamemode and gamechange_alpha < 1 gamechange_alpha += 0.05

draw_set_alpha(gamechange_alpha)


draw_sprite(sprite_index,6,x,y)

var _deckheight = 6;

var _sc = global.winscale



var _num
switch mode_set{
	case "Tallimaliuqta!": _num = K05; break;
	case "Quliliuqta!": _num = K10; break;
	case "Iñuiññaliuqta!": _num = K20; break;
	default: _num = ""; break;
}



//if alarm[2] <= 0

	draw_set_color(c_black)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(global.cardtextfont)
	draw_text(x+_sc*(3-_deckheight),y+_sc*(30-_deckheight),mode_set);
	
	draw_set_font(global.cardnumfont)
	draw_text(x+_sc*(3-_deckheight),y+sprite_height-_sc*(40+_deckheight), _num)
	
	draw_set_alpha(1)
