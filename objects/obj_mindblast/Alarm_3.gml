/// @description Casting

if global.casting == true
{
	global.casting = false;
	global.castingTime = 0;
	
	//desaturate image

	
	alarm[0] = cd;

	if global.madness == false
	{
		global.insanity = global.insanity + insanityGain;
	}
	
	if global.talBlackout == true
	{
		with thisTar
		{
			if SWPApplied == true
			{
				alarm[0] = alarm[0] + global.talBlackoutDotInc*room_speed;
				alarm[7] = alarm[7] + global.talBlackoutDotInc*room_speed;
			}

			if VTApplied == true
			{
				alarm[1] = alarm[1] + global.talBlackoutDotInc*room_speed;
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
				if talMindShatterChargesLeft == 0 && cd > 0
				{
					image_index ++;
				}
				break;
			}
		}
	}
	else if cd > 0
	{
		image_index ++;
	}
	scr_damage(global.dmgMindBlast,thisTar)
}
