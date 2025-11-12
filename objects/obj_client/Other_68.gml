/// @description Insert description here
// You can write your code in this editor

var type_event = ds_map_find_value(async_load,"type");

switch type_event{
	case network_type_data:
		var buffer = ds_map_find_value(async_load,"buffer");
		buffer_seek(buffer,buffer_seek_start,0)
		receive_packet(buffer);
		break;
	
	
}