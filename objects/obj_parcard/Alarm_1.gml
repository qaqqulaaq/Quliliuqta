/// @description Drawing Animation Timer

if !drawn {
	drawn = true;
	alarm[1] = game_get_speed(gamespeed_fps) div 4;
}

else set = true;