/// @description Insert description here
// You can write your code in this editor



//in single player mode, all progression is controlled by the deck object
if can_click and not error{
	//The player cannot act until the actions are resolved
	can_click = false;
	var _check;
	
	switch stage{
		
		case 1:
		case 4:
		case 7:
		case 10:
		case 18:
		case 21:
		case 24:
		case 27:
		case 34:
		case 37:
		case 44:
		case 47:
		case 50:
		case 53:
		case 59:
		case 62:
		case 65:
		case 68:
		case 71:
		case 78:
			alarm[0] = game_get_speed(gamespeed_fps) div 4;
			break;
			
		case 14: error = true; break;
		
		case 15: 
			stage++;
			alarm[0] = game_get_speed(gamespeed_fps);
			break;
	
		case 31:
			_check = true
			with obj_parcard_tutorial{
				if val == 5 and selected _check = false;
				else if val != 5 and !selected _check = false;
			}
			
			if _check{
				stage++;
				alarm[0] =  game_get_speed(gamespeed_fps);
			}
			else error = true;
			
			break;
			
		case 41: 
		case 56:
			_check = true
			with obj_parcard_tutorial if !selected _check = false;
			
			
			if _check{
				stage++;
				alarm[0] =  game_get_speed(gamespeed_fps);
			}
			else error = true;
			
			break;
			
		case 75:
			_check = true
			with obj_parcard_tutorial{
				if val == 10 and !selected _check = false;
				else if val != 10 and selected _check = false;
			}
			
			
			if _check{
				stage++;
				alarm[0] =  game_get_speed(gamespeed_fps);
			}
			else error = true;
			
			break;

		case 81:
		case 87:
		case 93:
		case 99:
			var _val = 0
			with obj_parcard_tutorial{
				if selected _val += val
			}
			
			
			if _val == 10{
				stage++;
				alarm[0] =  game_get_speed(gamespeed_fps);
			}
			else error = true;
			
			break;		
			
		case 84:
		case 90:
		case 96:
			alarm[0] = 1;
			break;			
			
		default: break;
	}
}
