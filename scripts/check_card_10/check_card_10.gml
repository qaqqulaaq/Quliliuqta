// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_card_10(){
	var _status = array_create(10,0)
	with obj_parcard{
		_status[val] += 1
	}
	
	if _status[10] >= 1{
		comp_select([0,0,0,0,0,0,0,0,0,1])
		return true;
	}
	
	if _status[9] >= 1 and _status[1] >= 1{
		comp_select([1,0,0,0,0,0,0,0,1])
		return true;
	}
	
	if _status[8] >= 1{
		if _status[1] >= 2 {
			comp_select([2,0,0,0,0,0,0,1])
			return true;
		}
		else if _status[2] >= 1{
			comp_select([0,1,0,0,0,0,0,1])
			return true;
		}
	}
	
	if _status[7] >= 1 {
		if _status[1] >= 3{
			
		}
	}

}


function check_card(_targ){
	
	// Double check to make sure that the values that would break the function get handled first
	if _targ == 0 return [0];
	
	if _targ == 1 return [1];
	
	//Creates a return array assuming that all ones didn't work
	var _rearray = [_targ];
	
	//Creates an array based on the target and counts how many of each card are available
	var _status = array_create(_targ,0);
	with obj_parcard _status[val] += 1;
	while array_last(_status) == 0 array_pop(_status);
	while array_length(_rearray) < array_length(_status) array_push(_rearray, 0);
	
	
	//Run the loop until it is mathematically impossible to meet the condition
	while array_length(_rearray) <= _targ{
		
	//check each value for rearray vs the status to see if the conditions are met
		for (var _i = 0; _i < array_length(_rearray); _i++){
			//set a variable that will be changed unless the status meets all criteria
			var _done = true;
			if _status[_i] < _rearray[_i] _done = false;
			//if _done stays true, then the return array is returned
			if _done return _rearray;
		}
		//if not, the while loop needs to adjust the array
		if _rearray[0] > 1 {
			_rearray[0] -= 2
			_rearray[1] += 1
		}
		
		else if _rearray[0] == 1{
			
		}
	}
	//if there was no result after all that work, return with nothing
	return false;
	
	
	
}


/*
function array_fill(_array){
	//cuts the array to its largest value, or in half
	while (_array[array_length(_array)-1] == 0 or array_length(_array) > 5) array_pop(_array);
	//creates an array to be returned that has 1 at the end of it, same length as the argument array
	var _return_array = array_create(array_length(_array)-1,0)
	array_push(_return_array, 1)
	
	if _array[0] >= 10 - array_length(_return_array) {
		_return_array[0] = 10 - array_length(_return_array)
		return _return_array
	}
	
	
	
	
	
	if (array_length(_array) > 4){
		var _check_array = []
		
		for (var _i = 0; _i < 10 - array_length(_array); _i++){
			array_push(_check_array, 0);
			for (var _j = 0; _j < array_length(_check_array); _j++) _check_array[_j] += 1
		}
		
		
	}
}
*/

function step_add(_array){
	var _sum = 0
	for (var _i = array_length(_array)-1; _i >= 0 ; _i++){
		_sum += _array[_i] * (_i+3)
	}	
}