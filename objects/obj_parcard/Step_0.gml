/// @description Insert description here
// You can write your code in this editor

if abs(targ_x - x) < abs(hspeed) {
	hspeed = 0
	x = targ_x
}
if abs(targ_y - y) < abs(vspeed) {
	vspeed = 0
	y = targ_y
}