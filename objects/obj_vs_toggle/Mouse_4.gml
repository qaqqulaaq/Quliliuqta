/// @description Insert description here
// You can write your code in this editor


timer_dir = 1
if label == "Off" global.vscomp = false;
else global.vscomp = true;



with obj_vs_toggle {
	if label == "On" and global.vscomp == false timer_dir = -1
	if label == "Off" and global.vscomp == true timer_dir = -1
}