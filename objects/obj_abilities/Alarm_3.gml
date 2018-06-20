/// @description Casting

if global.casting == true
{
	global.casting = false;
	global.castingTime = 0;
	
	//desaturate image
	if cd > 0 or abilityName == "Mind Blast"
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
		
		if talMindShatterChargesLeft > 0 and talMindShatterChargesLeft <= global.talMindShatterCharges
		{
			for (var i=global.talMindShatterCharges; i > 0 ; i--;)
			{
				if shatterInst[i].alarm[0] = -1
				{
					shatterInst[i].alarm[0] = cd
					
					if talMindShatterChargesLeft < global.talMindShatterCharges
					{
						var maxi = 0;
						for (var e=global.talMindShatterCharges; e > 0 ; e--;)
						{
							if i != e
							{
								maxi = max(maxi,shatterInst[e].alarm[0])
							}
						}
						shatterInst[i].alarm[0] += maxi
					}
					
					talMindShatterChargesLeft --;
					if talMindShatterChargesLeft > 0
					{
						image_index --;
					}
					break;
				}
			}
		}
	}
	
	if abilityName == "Dark Void"
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
