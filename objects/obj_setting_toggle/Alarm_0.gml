/// @description Insert description here
// You can write your code in this editor

if setting == "touch"{
	if label == "On"{
		global.touchmode = true
		timer_dir = -1
	}

	if label == "Off"{
		global.touchmode = false
		timer_dir = -1
	}
}



else if setting == "minus"{
	if label == "On"{
		global.minuscard = true
		timer_dir = -1
	}

	if label == "Off"{
		global.minus = false
		timer_dir = -1
	}
}