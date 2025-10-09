//This function checks whether the cards for the goal of the game are available for the computer to take
//Note that the values for _goal should only be 5, 10 or 20 for now, based on the difficulty setting

function check_card(_goal){
	//create a status array based on which cards are available
	var _status = array_create(_goal,0);
	with obj_parcard if val > 0 _status[val-1] += 1;
	
	//End the function early if it is obviously impossible to achieve (the sum of the status is less than the target), or if the number is exact
	if step_add(_status) == _goal {    //if the number is exact, then it should be the only possible outcome
		comp_select(_status);
		return true;
	}


	//If the card with the same value of the goal is available, an array that contains only that card is used.
	else if _status[_goal-1] >= 1{
		var _returnarray = array_create(_goal - 1, 0)
		array_push(_returnarray, 1);
		comp_select(_returnarray);
		return true;		
	}
	/////////////////////////////////////
	//If the function got this far, it will test all possible outcomes to determine if there is a possible solution,
	//building from the smallest numbers to try to get the most cards
	/////////////////////////////////////


	while array_length(_status) > 0{
		
		//every iteration begins with checking if dropping the highest card made the goal impossible
		if step_add(_status) < _goal return false
		
		//The _status array is trimmed to the highest available valuse value
		while array_last(_status) == 0 array_pop(_status);	
		var _len = array_length(_status)
	

		//an array to be run through comp select is created
		var _returnarray = array_create(_len - 1, 0)
		array_push(_returnarray,1)

	
		//A list of arrays of the same length or less to check is obtained
		var _checkarray = get_check_array(_goal - _len, _len);

	


		//for each of the arrays in the checkarray list, test to see if a suitable one can be found
		for (var _i = 0; _i < array_length(_checkarray); _i++){
			var _found = true;
			for (var _j = 0; _j < array_length(_checkarray[_i]); _j++){
				if _status[_j] < _checkarray[_i][_j] _found = false;
			}
		
			//if one is found, it runs the selection method and returns true.
			if _found{
				for (var _k = 0; _k < array_length(_checkarray[_i]); _k++){
					_returnarray[_k] += _checkarray[_i][_k]
				}
				comp_select(_returnarray);
				return true;	
			}	
		}
		//if a valid result could not be found with the highest card, this card is removed from the status
		array_pop(_status)
		
		//this whole process will be repeated, testing lower cards to see if a suitable combination can be found.
	}
	
	//if it couldn't find a match after all of that, return false and a card is drawn as normal
	return false;
	
}


function get_check_array(_targ,_size){
	var _full;
	switch _targ{
		case 1: _full = [[1]]; break;
		
		case 2: _full = [[2],[0,1]]; break;
		
		case 3: _full = [[3],[1,1],[0,0,1]]; break;
		
		case 4: _full = [[4],[2,1],[0,2],[1,0,1],[0,0,0,1]]; break;

		case 5: _full = [[5],[3,1],[2,0,1],[1,2],[1,0,0,1],[0,1,1],[0,0,0,0,1]]; break;
		
		case 6: _full = [[6],
						[4,1],
						[3,0,1],
						[2,2],
						[2,0,0,1],
						[1,1,1],
						[0,0,2],
						[1,0,0,0,1],
						[0,0,0,0,0,1]]; 
						break;	
		
		case 7: _full = [[7],
						[5,1],
						[4,0,1],
						[3,2],
						[3,0,0,1],
						[2,1,1],
						[1,3],
						[1,0,2],
						[2,0,0,0,1],
						[0,1,0,0,1],
						[1,0,0,0,0,1],
						[0,0,0,0,0,0,1]]
						break;
						
		case 8: _full = [[8],
						[6,1],
						[5,0,1],
						[4,2],
						[4,0,0,1],
						[3,1,1],
						[2,3],
						[0,4],
						[2,0,2],
						[3,0,0,0,1],
						[0,1,2],
						[1,1,0,0,1],
						[2,0,0,0,0,1],
						[0,1,0,0,0,1],
						[0,0,1,0,1],
						[0,0,0,2],
						[1,0,0,0,0,0,1],
						[0,0,0,0,0,0,0,1]]
						break;
						
		case 9: _full = [[9],
						[7,1],
						[6,0,1],
						[5,2],
						[5,0,0,1],
						[4,1,1],
						[3,3],
						[1,4],
						[3,0,2],
						[4,0,0,0,1],
						[1,1,2],
						[2,1,0,0,1],
						[3,0,0,0,0,1],
						[1,1,0,0,0,1],
						[1,0,1,0,1],
						[1,0,0,2],
						[2,0,0,0,0,0,1],
						[0,0,1,0,0,1],
						[0,0,0,1,1],
						[0,1,0,0,0,0,1],
						[1,0,0,0,0,0,0,1],
						[0,0,0,0,0,0,0,0,1]]
						break;

	}
	
	
//Slims down the possible selections based on array size	
	if _size < _targ for (var _i = 0; _i < array_length(_full); _i++){
		if array_length(_full[_i]) > _size{
			array_delete(_full,_i,1);
			_i--;
		}	
	}
//returns what's left
	return _full;
	
}


function step_add(_array){
	var _sum = 0
	for (var _i = array_length(_array)-1; _i >= 0 ; _i--){
		_sum += _array[_i] * (_i+1);
	}
	return _sum;
}