if alarm_get(0) > 0 and cd > 0
{
	cdLeft = alarm[0]/room_speed;
}
else
{
	cdLeft = global.gcdLeft;
}


//set cd to shared cd for eruption and bolt
if (global.madness == true and (abilityName == "Void Eruption" or abilityName == "Void Bolt"))
{
	if madnessStart == true
	{
		cdHold = cdhasted;
		cdhasted = global.cdSharedVoid;
		madnessStart = false;
		if alarm[0] > 1
		{
			alarm[0] = 1;
		}
	}
}
else
{
	if madnessStart == false
	{
		cdhasted = cdHold;
		if cdhasted == 0
		{
			if cdLeft > 0 and cdLeft != global.gcdLeft
			{
				image_index --;
			}
			cd = 0;

		}
		madnessStart = true;
	}
}

if cdhasted > 0 //update cooldown for cooldowns that are defined by haste
{
	cd = cdhasted*global.gcd;
}

