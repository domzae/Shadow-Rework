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
	
	var tempDoT = 0;
	if dotApplied == false 
	{
		image_index ++;
		dotApplied = true;
	}
	else if alarm[4] > (dotTime*0.3)*room_speed
	{
		tempDoT = dotTime*0.3*room_speed
	}
	else
	{
		tempDoT = alarm[4]
	}
	alarm[4] = dotTime*room_speed + tempDoT;
	
	if global.talMisery == true
	{
		with inst_swpain
		{
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
	}
}
