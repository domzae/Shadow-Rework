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
	if dotTime > 0
	{
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
	
	if abilityName == "Mind Blast"
	{
		if global.talBlackout == true
		{
			with inst_swpain
			{
				if dotApplied == true
				{
					alarm[4] = alarm[4] + global.talBlackoutDotInc*room_speed;
				}
			}
			with inst_vampirictouch
			{
				if dotApplied == true
				{
					alarm[4] = alarm[4] + global.talBlackoutDotInc*room_speed;
				}
			}
		}
	}
}
