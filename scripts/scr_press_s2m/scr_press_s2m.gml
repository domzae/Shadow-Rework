if global.madness == false
{
	if scr_ability_check() //check for GCD //check own CD
	{
		obj_gcd.alarm[0] = global.gcd;

		global.lastGCDinstant = true;
	
		image_index = 1;
		alarm[0] = cd;

		global.surrender = true;
		global.surrenderStart = true;
	}
}