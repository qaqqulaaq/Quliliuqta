/// @description Single Player points


clear_cards_solo(num_selected)
if instance_exists(obj_pointer) and obj_pointer.hpos !=5 and cardlist[obj_pointer.hpos+obj_pointer.vpos*5] == -1{
	
	for (var _i = 0; _i < 15; _i++){
		var _moved = false
		if cardlist[_i] != -1 with obj_pointer{
			hpos = _i mod 5
			vpos = _i div 5
			_moved = true
		}
		if _moved break;
		else if _i == 14 with obj_pointer hpos = 5
	}
	with obj_pointer start_position_pointer();
}

if global.setgoal == "Points" and (solo_pts >= global.pointgoal or comp_pts >= global.pointgoal) game_over = true

can_click = true
won_round = false
unselect_all();
