/// @description Insert description here
// You can write your code in this editor


if set{
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
			if val_selected == 5 clear_cards(num_selected)
		}
	}
}