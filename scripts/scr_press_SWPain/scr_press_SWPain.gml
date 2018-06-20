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

	var tempDoT = 0;
	if dotApplied == false 
	{
		image_index ++;
		dotApplied = true;
		alarm[7] = dotTime*room_speed;
	}
	else if alarm[4] > (dotTime*0.3)*room_speed
	{
		tempDoT = dotTime*0.3*room_speed
		alarm[7] = dotTime*room_speed+tempDoT
	}
	else
	{
		tempDoT = alarm[4]
		alarm[7] = tempDoT
	}
	alarm[4] = dotTime*room_speed + tempDoT;

}