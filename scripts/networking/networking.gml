// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function receive_packet(_buffer){
	var _msgid = buffer_read(_buffer,  buffer_u8);
	var _x;
	var _y;
	var _slave;
	var _player;
	var _playerstats;
	var _sock;
	var _socket;
	switch(_msgid){
		
		
		case network.player_connect:
			_socket = buffer_read(_buffer,buffer_u8)
			with obj_deck_online turn = buffer_read(_buffer,buffer_u8)
			
			switch _socket{
				case 1: _x = 225; break;
				case 2: _x = 1695; break;
				case 3: _x = 615; break;
				case 4: _x = 1305; break;
			}
			
			_y = 810
			
			global.onlinenum = _socket - 1
			
			_player = instance_create_layer(_x,_y,"Players",obj_player,{player_num: _socket - 1})
			instance_create_layer(_x,_y,"Players",obj_player_stats,{player_num: _socket - 1})
			instance_create_layer(_x+90,_y+165,"Players",obj_end_button,{player_num: _socket - 1})
			instance_create_layer(_x-75,_y+165,"Players",obj_draw_button,{player_num: _socket - 1})
			
			for (var _i = 0; _i < 14; _i++) {
				var _num = buffer_read(_buffer, buffer_u8) ;
				draw_card_network(_num,_i, false); 
			}
			
			
			ds_map_add(socket_to_instanceid,_socket,_player)
			
			with obj_deck_online if turn == _socket - 1 alarm[0] = 10
			
		break;
		
		case network.player_joined:
			_socket = buffer_read(_buffer,buffer_u8)
			switch _socket{
				case 1: _x = 225; break;
				case 2: _x = 1695; break;
				case 3: _x = 615; break;
				case 4: _x = 1305; break;
			}
			
			_y = 810
			
			_player = instance_create_layer(_x,_y,"Players",obj_player,{player_num: _socket - 1})
			instance_create_layer(_x,_y,"Players",obj_player_stats,{player_num: _socket - 1})
			
			ds_map_add(socket_to_instanceid,_socket,_player)		
			break;
		
		case network.player_disconnect:
			_socket = buffer_read(_buffer,buffer_u8)
			_player = ds_map_find_value(socket_to_instanceid, _socket);
			var _playernum = _player.player_num
			with obj_player if player_num == _playernum instance_destroy();
			
			ds_map_delete(socket_to_instanceid,_socket);
			break;
		
		case network.draw_request:
			with obj_parcard selected = false
			var _turn = buffer_read(_buffer, buffer_u8)		
			_player = ds_map_find_value(socket_to_instanceid, _turn)
			for (var _i = 0; _i < 14; _i++) {
				var _num = buffer_read(_buffer, buffer_u8) ;
				draw_card_network(_num,_i); 
			}
			//_sock = buffer_read(_buffer,buffer_u8);	
			//_player = ds_map_find_value(socket_to_instanceid, _sock);		
			break;
		
		case network.select:
			var _num = buffer_read(_buffer, buffer_u8);
			var _sel = buffer_read(_buffer, buffer_bool)
			
			with obj_parcard if position == _num selected = !_sel;
			break;
			
		case network.evaluate:
			var _pts = buffer_read(_buffer,buffer_u16);
			var _fullcheck = buffer_read(_buffer,buffer_bool);
			
			if _fullcheck with obj_parcard remove_cards(obj_deck_online.x,obj_deck_online.y);
			else if _pts > 0 clear_cards(_pts,obj_deck_online.turn)
			
			break;
			
		case network.pass_control:
			with obj_deck_online {
				turn = buffer_read(_buffer,buffer_u8)
				if turn == global.onlinenum alarm[0] = 10
			}
			
			break;
	}
}

function send_draw_request(){
	timer_dir = -1
	pressed = false
	//Makes the player inactive while the card is being drawm
		
	alarm[1] = game_get_speed(gamespeed_fps) div 2

	
	buffer_seek(obj_client.client_buffer,buffer_seek_start,0);
	buffer_write(obj_client.client_buffer,buffer_u8,network.draw_request);
	network_send_packet(obj_client.client,obj_client.client_buffer,buffer_tell(obj_client.client_buffer));
	
	
}

function send_selection(_pos,_sel){
	buffer_seek(obj_client.client_buffer,buffer_seek_start,0);
	buffer_write(obj_client.client_buffer,buffer_u8,network.select);
	buffer_write(obj_client.client_buffer,buffer_u8,_pos);	
	buffer_write(obj_client.client_buffer,buffer_bool,_sel);
	network_send_packet(obj_client.client,obj_client.client_buffer,buffer_tell(obj_client.client_buffer));	
}

function send_evaluation_request(){
	buffer_seek(obj_client.client_buffer,buffer_seek_start,0);
	buffer_write(obj_client.client_buffer,buffer_u8,network.evaluate);
	network_send_packet(obj_client.client,obj_client.client_buffer,buffer_tell(obj_client.client_buffer));
}

function draw_card_network(_num, _i,_fly = true){

	if obj_deck_online.cardlist[_i] != noone and obj_deck_online.cardlist[_i].val != _num {
		instance_destroy(obj_deck_online.cardlist[_i]);
		obj_deck_online.cardlist[_i] = noone;
		_fly = false;
	}

	if obj_deck_online.cardlist[_i] == noone{
		var _pos = array_create(2,0);
		var _x = 320*global.winscale;
		var _y = 230*global.winscale;

		if _i > 6 {
			_pos[0]= ( 80 *(_i-6))*global.winscale;
			_pos[1] = 128*global.winscale;
		}
	
		else {		
			_pos[0] = ( 80 *(_i+1))*global.winscale;
			_pos[1] = 32 * global.winscale;
		}
	
		if _num != 255 and !_fly obj_deck_online.cardlist[_i] = instance_create_layer(_pos[0],_pos[1],"Flying",obj_parcard,{val: _num, drawn: true, set: true, targ_x: _pos[0], targ_y: _pos[1], position: _i});
	
		else if _num != 255 obj_deck_online.cardlist[_i] = instance_create_layer(_x,_y,"Flying",obj_parcard,{val: _num, targ_x: _pos[0], targ_y: _pos[1], hspeed: (_pos[0]- _x)*4 / game_get_speed(gamespeed_fps), vspeed: (_pos[1] - _y)*4 / game_get_speed(gamespeed_fps), position: _i});
	}
	
}