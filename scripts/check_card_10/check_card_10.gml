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

/*
function check_card(_targ){
	
	//create a status array based on which cards are available
	var _status = array_create(_targ,0);
	with obj_parcard _status[val] += 1;
	
	//End the function early if it is obviously impossible to achieve (the sum of the status is less than the target), or if the number is exact
	if step_add(_status) < _targ return false;  //reconsider how to return if it is not possible to get the target
	else if step_add(_status) == _targ return _status  //if the number is exact, then it should be the only possible outcome

	// Double check to make sure that the values that would break the function get handled first
	if _targ == 0 return [0];
	if _targ == 1 return [1];
	
	/////////////////////////////////////
	//If the function got this far, it will test all possible outcomes to determine if there is a possible solution,
	//building from the smallest numbers to try to get the most cards
	/////////////////////////////////////
	
	//The _status array is trimmed to the lowest value, and a return array of the same length is created
	while array_last(_status) == 0 array_pop(_status);	
	var _rearray = [_targ];
	while array_length(_rearray) < array_length(_status) array_push(_rearray, 0);
			
	//Run the loop until the last 

	var _give_up = false
	while !_give_up  {
		
		
	///////////////////////////////
	//This is the block that determines if a success value has been found
	/////////////////////////////
	
	//check each value for rearray vs the status to see if the conditions are met
		for (var _i = 0; _i < array_length(_rearray); _i++){
			//set a variable that will be changed unless the status meets all criteria
			var _done = true;
			if _status[_i] < _rearray[_i] _done = false;
			//if _done stays true, then the return array is returned
			if _done return _rearray;
		}
		
		
		//////////////////////////
		//This block deals with progression if not done
		/////////////////////////
		
		//the simple block for when checking one and two
		if _rearray[0] > 1 {
			_rearray[0] -= 2
			_rearray[1] += 1
		}
		
		
		//The block if higher numbers need to be checked, starting from 3
		else if _rearray[0] <= 1 and array_length(_rearray) > 2{
			
		}
	}
	
	
	
	
	
	
	//if there was no result after all that work, return with nothing
	return false;
	
	
	
}


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

