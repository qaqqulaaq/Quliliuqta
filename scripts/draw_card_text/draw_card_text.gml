// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_card_text(_x,_y,val){
	
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	
	
	for (var _h = 0; _h < array_length(global.numnamearr[val]); _h++){
		var _fullword = ""
		for (var _i = 0; _i < array_length(global.numnamearr[val][_h]); _i++) _fullword += global.numnamearr[val][_h][_i]
	
		var _left = _x - string_width(_fullword) div 2
	
		for (var _i = 0;  _i < array_length(global.numnamearr[val][_h]); _i++){
			if _i mod 2 == 0 draw_set_color(c_blue)
			else draw_set_color(c_red)
			draw_text(_left,_y+_h*string_height(_fullword),global.numnamearr[val][_h][_i])
			_left += string_width(global.numnamearr[val][_h][_i])
		}
	}
}

function draw_card_text_transformed(_x,_y,val,_xscale,_yscale,_angle){
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	for (var _h = 0; _h < array_length(global.numnamearr[val]); _h++){
	
	
		var _fullword = "";
		for (var _i = 0;  _i < array_length(global.numnamearr[val][_h]); _i++) {
			_fullword += global.numnamearr[val][_h][_i]
		}
	
		var _left = _x - string_width(_fullword) div 2
	
		for (var _i = 0;  _i < array_length(global.numnamearr[val][_h]); _i++){
			if _i mod 2 == 0 draw_set_color(c_blue)
			else draw_set_color(c_red)
			draw_text_transformed(_left,_y+_h*string_height(_fullword),global.numnamearr[val][_h][_i],	_xscale,_yscale, _angle)
			_left += string_width(global.numnamearr[val][_h][_i])*_xscale
		}
	}
}