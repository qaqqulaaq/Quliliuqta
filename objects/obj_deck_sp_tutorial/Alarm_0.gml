/// @description Move Stage

var _card = -1
switch stage{
	
	
	
	//stage 0: nothing, break before first dialog
	case 0: can_click = true; break;
	
	//stage 1: dialog box closes, draws a card
	case 1: _card = 1; break;
	case 4: _card = 5; break;
	case 7: _card = 2; break;
	case 10: _card = 2; break;
	case 18: _card = 4; break;
	case 21: _card = 3; break;
	case 24: _card = 5; break;
	case 27: _card = 3; break;
	case 34: _card = 0; break;
	case 37: _card = 5; break;
	case 44: _card = 1; break;
	case 47: _card = 2; break;
	case 50: _card = 3; break;
	case 53: _card = 4; break;
	case 59: _card = 6; break;
	case 62: _card = 7; break;
	case 65: _card = 8; break;
	case 68: _card = 9; break;
	case 71: _card = 10; break;
	case 78: _card = 1; break;
	case 84: _card = 3; break;
	case 90: _card = 4; break;
	case 96: _card = 2; break;
	
	
	//stage 2: Processing time while card is drawn after each of the above cases
	case 2:
	case 5:
	case 8:
	case 11:
	case 19:
	case 22:
	case 25:
	case 28:
	case 35:
	case 38:
	case 45:
	case 48:
	case 51:
	case 54:
	case 60:
	case 63:
	case 66:
	case 69:
	case 72:
	case 79:
	case 85:
	case 91:
	case 97:
		alarm[0] = game_get_speed(gamespeed_fps) div 4;
		break;
	
	//Brief break before next dialog box after card is drawn, activates ability to click
	case 3:
	case 6:
	case 9:
	case 14:
	case 20:
	case 23:
	case 26:
	case 36:
	case 46:
	case 49:
	case 52:
	case 55:
	case 61:
	case 64:
	case 67:
	case 70:
	case 80:
	case 86:
	case 92:
	case 98:
		can_click = true;
		break;
	
	case 16:
	case 32:
	case 42:
	case 57:
	case 76:
	case 82:
	case 88:
	case 94:
	case 100:
		with obj_parcard_tutorial if selected {
			selected = false
			remove_cards(room_width div 2, room_height);
		}
		alarm[0] =  game_get_speed(gamespeed_fps) div 2;
		break;
	
	case 17:
	case 58:
		solo_pts += 4
		disp_pts = point_convert(solo_pts)
		can_click = true;
		break;
		
	case 33:
	case 43:
		solo_pts += 3;
		disp_pts = point_convert(solo_pts);
		can_click = true;
		break;
	
	case 77:
		solo_pts += 1;
		disp_pts = point_convert(solo_pts);
		can_click = true;
		break;
		
	case 83:
	case 89:
	case 95:
	case 101:
		solo_pts += 2;
		disp_pts = point_convert(solo_pts);
		can_click = true;
		break;
	
	default: break;
	
}


if _card != -1 {
	draw_card(_card,true)
	alarm[0] = game_get_speed(gamespeed_fps) div 4
}
stage += 1; 


