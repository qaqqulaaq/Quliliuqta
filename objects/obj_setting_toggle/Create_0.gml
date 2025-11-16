/// @description Insert description here
// You can write your code in this editor

var _set = false
switch setting{
	case "touch": _set = (label == "Off" and !global.touchmode) or (label == "On" and global.touchmode); break;
	case "minus": _set = (label == "Off" and !global.minuscard) or (label == "On" and global.minuscard); break;
	case "sound": _set = (label == "Off" and !global.soundon) or (label == "On" and global.soundon); break;
}


if _set{
	timer_dir = 1	
	sprite_timer = 7
}


else{
	sprite_timer = 0
	timer_dir = -1
}