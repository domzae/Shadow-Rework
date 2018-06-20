/// @description Casting

if global.casting == true
{
	global.casting = false;
	global.castingTime = 0;
	
	alarm[0] = cd;

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
	
	if global.talMisery == true
	{
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
}
