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
		
	obj_debuff_SWD.alarm[0] = 20*room_speed
	
	insanityGain = global.insgainSWDeath + global.insgainSWDeath*obj_debuff_SWD.debuffLeft;
	if insanityGain < 100
	{
		obj_debuff_SWD.debuffLeft ++;
	}
	
	if global.madness == false
	{
		global.insanity = global.insanity + insanityGain;
	}
		
}