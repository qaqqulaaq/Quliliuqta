/// @description Insert description here
// You can write your code in this editor




switch room{
	
	case rm_game_mp: room_goto(rm_game_multioption); break;
	
	case rm_game_sp: room_goto(rm_game_singoption); break;
	
	case rm_game_multioption:
	case rm_game_singoption:
	case rm_settings:
		room_goto(rm_game_select); 
		break;
	
	case rm_game_select: game_end(); break;
}


