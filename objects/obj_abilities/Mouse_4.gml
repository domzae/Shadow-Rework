//do nothing if void buttons are pressed while sane
if isVoid == true and global.sanity == true
{
}
//check GCD //check own CD
else if global.gcdLeft == 0 and cdLeft == 0
{
	
	//set gcd
	obj_gcd.alarm[0] = global.gcd;
	
	
	
	//INSTANT
	if castTime = 0 and channelTime = 0
	{
		global.channeling = false;
		global.channelingTime = 0;
		
		global.lastGCDinstant = true;
	
		if cd > 0
		{
			//desaturate image
			image_index ++;
			alarm[0] = cd;
			if global.madness == true
			{
				if abilityName == "Void Eruption"
				{
					inst_voidbolt.image_index ++;
					inst_voidbolt.alarm[0] = cd;
				}
				if abilityName == "Void Bolt"
				{
					inst_voideruption.image_index ++;
					inst_voideruption.alarm[0] = cd;
				}
			}
		}
		else
		{
			alarm[0] = global.gcd;
		}
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
		}
	}
	//CAST TIME
	else if castTime > 0
	{
		global.lastGCDinstant = false;
		global.channeling = false;
		global.channelingTime = 0;
		
		global.casting = true;
		global.castingTime = 0;
		
		alarm[3] = castTime*global.hastemultiplier;
	}
	//CHANNEL
	else
	{
		global.lastGCDinstant = false;
		
		global.channeling = true;
		global.channelingTime = 0;
		
		inst_mindflay.alarm[0] = -1;
		inst_mindflay.alarm[1] = -1;
		inst_mindflay.alarm[2] = -1;
		
		inst_mindsear.alarm[0] = -1;
		inst_mindsear.alarm[1] = -1;
		inst_mindsear.alarm[2] = -1;
		
		alarm[0] = global.gcd;
		alarm[1] = channelTime*global.hastemultiplier;
		alarm[2] = channelTime*global.hastemultiplier/4;
	}
	
}

