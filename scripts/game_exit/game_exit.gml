// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function game_exit(){
		switch room{
	
		case rm_game_mp: 
		case rm_game_mp_tutorial:
			room_goto(rm_game_multioption);
			break;
	
		case rm_game_sp:
		case rm_game_sp_tutorial:	
			room_goto(rm_game_singoption); 
			break;
	
		case rm_settings:
		case rm_game_multioption:
		case rm_game_singoption:
			save_setting();
			room_goto(rm_game_select); 
			break;
	
		case rm_game_select: game_end(); break;
	}
}