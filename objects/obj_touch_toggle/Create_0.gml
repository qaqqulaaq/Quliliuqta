/// @description Insert description here
// You can write your code in this editor


if label == "Off" and !global.touchmode or label == "On" and global.touchmode {
	timer_dir = 1	
	sprite_timer = 7
}
else{
	sprite_timer = 0
	timer_dir = -1
}
