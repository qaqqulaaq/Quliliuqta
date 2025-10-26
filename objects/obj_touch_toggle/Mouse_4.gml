/// @description Insert description here
// You can write your code in this editor


timer_dir = 1
if label == "Off" global.touchmode = false;
else global.vscomp = true;



with obj_touch_toggle {
	if label == "On" and global.touchmode == false timer_dir = -1
	if label == "Off" and global.touchmode == true timer_dir = -1
}