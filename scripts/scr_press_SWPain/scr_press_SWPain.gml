if scr_ability_check()
{		
	global.lastGCDinstant = true;
	
	if cd > 0
	{
		//desaturate image
		image_index ++;
		alarm[0] = cd;
	}
	else
	{
		alarm[0] = global.gcd;
	}

		
	if global.madness == false
	{
		global.insanity = global.insanity + insanityGain;
	}

	if dotApplied == false 
	{
		image_index ++;
	}
	
	dotApplied = true;
	alarm[4] = dotTime*room_speed;

}