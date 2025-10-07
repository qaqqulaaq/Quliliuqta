// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function point_convert(num){
	var _set = 0;
	
	while (num div power(20,_set) != 0) _set += 1;
	
	var _arr = array_create(_set-1,0);
	var _rem = num;
	
	while _set >= 0{
		_arr[_set] = chr(KB + (_rem div power(20, _set)));
		_rem = _rem % power(20, _set);
		_set -= 1;
	}
	
	return 
	
}

function point_add(num){
	points += num
	disp_pts = point_convert(points)
}