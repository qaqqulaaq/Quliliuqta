/// @description Insert description here
// You can write your code in this editor

if selected {
	selected = false
	obj_deck.num_selected -= 1
	obj_deck.val_selected -= val;
}
else {
	selected = true
	var _val = val;
	with obj_deck{
		num_selected += 1;
		val_selected += _val;
		if val_selected == 5{
			var _unselect = []
			point_add(num_selected);
			num_selected = 0
			val_selected = 0
			with (obj_parcard) {
				if !selected array_push(_unselect,val)
				instance_destroy(self)
			}
			while array_length(_unselect) > 0 draw_card(array_pop(_unselect))
		}
	}
}