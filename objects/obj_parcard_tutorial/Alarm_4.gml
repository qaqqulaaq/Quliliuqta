/// @description Prevents double click
// You can write your code in this editor

just_pressed = false;

//checks to see if the cards can be selected
var _selectable = false

switch obj_deck_sp_tutorial.stage{
	
	case 14:
	case 31:
	case 41:
	case 56:
	case 75:
	case 81:
	case 87:
	case 93:
	case 99:
		_selectable = true;
		break;
	
}


//Cards that should not be selected can be unselected
if val == 5 and obj_deck_sp_tutorial.stage == 31 and selected selected = false;
else if obj_deck_sp_tutorial.stage >= 75 and selected selected = false; 


//Select the cards that can be selected
else if _selectable{
	selected = true	
}
	


//Special script during stage 14
if obj_deck_sp_tutorial.stage == 14{
	
	var _allclick = true

	with obj_parcard_tutorial if !selected _allclick = false
	
	if _allclick with obj_deck_sp_tutorial{
		alarm[0] = game_get_speed(gamespeed_fps) div 4
	}
	
}