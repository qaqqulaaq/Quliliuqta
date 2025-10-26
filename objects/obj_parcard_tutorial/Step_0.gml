/// @description Insert description here
// You can write your code in this editor

if abs(targ_x - x) < abs(hspeed) {
	hspeed = 0
	x = targ_x
	layer_add_instance("BelowDeck",self)
}
if abs(targ_y - y) < abs(vspeed) {
	vspeed = 0
	y = targ_y
	layer_add_instance("BelowDeck",self)
}

