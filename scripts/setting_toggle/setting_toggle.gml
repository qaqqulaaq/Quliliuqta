// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function setting_toggle(){
	
	if setting == "touch"{
		if (label == "On" and !global.touchmode){
			timer_dir = 1
			with obj_setting_toggle if label == "Off" and setting == "touch" timer_dir = -1
			global.touchmode = true
		}
			
		else if (label == "Off" and global.touchmode){
			timer_dir = 1
			with obj_setting_toggle if label == "On" and setting == "touch" timer_dir = -1
			global.touchmode = false
		}
	}
	
	else if setting == "minus"{
		if (label == "On" and !global.minuscard){
			timer_dir = 1
			with obj_setting_toggle if label == "Off" and setting == "minus" timer_dir = -1
			global.minuscard = true
		}
			
		else if (label == "Off" and global.minuscard){
			timer_dir = 1
			with obj_setting_toggle if label == "On" and setting == "minus" timer_dir = -1
			global.minuscard = false
		}
	}
	
	else if setting == "sound"{
		if (label == "On" and !global.soundon){
			timer_dir = 1
			with obj_setting_toggle if label == "Off" and setting == "sound" timer_dir = -1
			global.soundon = true
		}
			
		else if (label == "Off" and global.soundon){
			timer_dir = 1
			with obj_setting_toggle if label == "On" and setting == "sound" timer_dir = -1
			global.soundon = false
		}
	}
	
	
	
}