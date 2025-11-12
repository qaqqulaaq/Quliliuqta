/// @description Insert description here
// You can write your code in this editor

var _event_type = async_load[? "event_type"];

var _is_discovered = _event_type == "gamepad discovered";
var _is_lost = _event_type == "gamepad lost";

if (!_is_discovered && !_is_lost)
    exit;

var _gamepad_id = async_load[? "pad_index"];
if (_is_discovered) {
    show_debug_message("GAMEPAD {0} DISCOVERED", _gamepad_id);
    if array_length(devices) < 4 {
		array_push(devices, _gamepad_id);
	}
} else {
    show_debug_message("GAMEPAD {0} LOST", _gamepad_id);
    
	
	array_delete(devices, array_get_index(devices,_gamepad_id), 1);
	show_message(string(devices))
}