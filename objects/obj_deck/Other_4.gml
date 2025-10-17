/// @description Insert description here
// You can write your code in this editor

if global.num_of_players == 3 {
	with obj_player if player_num == 3 instance_destroy(self);
}

else if global.num_of_players == 2 with obj_player {
	if player_num == 3 instance_destroy(self);
	else if player_num == 2 instance_destroy(self);
}