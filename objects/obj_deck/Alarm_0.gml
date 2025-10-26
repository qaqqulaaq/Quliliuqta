/// @description Run start_turn()


if room == rm_game_sp {
	if sp_remove {
		clear_table()
		sp_remove = false
	}
	start_turn(15)
	
}
else if room == rm_game_mp start_turn(14)