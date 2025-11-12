/// @description Insert description here
// You can write your code in this editor

enum network{
	player_connect,
	player_joined,
	player_disconnect,
	draw_request,
	select,
	pass_control
}



client = network_create_socket(network_socket_tcp);
network_connect(client,"192.168.1.28",4932);

client_buffer = buffer_create(1024,buffer_fixed,1);

socket_to_instanceid = ds_map_create();

turn = -1