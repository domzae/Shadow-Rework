/// @description Casting

if global.casting == true
{
	global.casting = false;
	global.castingTime = 0;
	
	//desaturate image
	if cd > 0 
	{
		image_index ++;
	}
	
	alarm[0] = cd;

	if global.madness == false
	{
		global.insanity = global.insanity + insanityGain;
	}
	
	with inst_swpain
	{
		if dotTime > 0
		{
			if dotApplied == false
			{
				image_index ++;
			}
			dotApplied = true;
			alarm[4] = dotTime*room_speed;
		}
	}
}
