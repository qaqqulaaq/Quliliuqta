/// @description Insert description here
// You can write your code in this editor




switch room{
	
	case rm_game_mp: 
	case rm_game_mp_tutorial:
		room_goto(rm_game_multioption);
		break;
	
	case rm_game_sp:
	case rm_game_sp_tutorial:	
		room_goto(rm_game_singoption); 
		break;
	
	case rm_game_multioption:
	case rm_game_singoption:
	case rm_settings:
		room_goto(rm_game_select); 
		break;
	
	case rm_game_select: game_end(); break;
}


