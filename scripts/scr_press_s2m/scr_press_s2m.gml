if scr_ability_check() and global.madness == false //check for GCD //check own CD
{
	obj_gcd.alarm[0] = global.gcd;

	global.lastGCDinstant = true;
	
	image_index ++;
	alarm[0] = cd;

	global.surrender = true;
	global.surrenderStart = true;

}