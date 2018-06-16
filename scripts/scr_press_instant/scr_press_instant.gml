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
		
if abilityName == "Shadow Word: Death"
{
	//obj_debuff_SWD.alarm[0] = 20*room_speed
	insanityGain = global.insgainSWDeath + global.insgainSWDeath*obj_debuff_SWD.debuffLeft;
	if insanityGain < 100
	{
		obj_debuff_SWD.debuffLeft ++;
	}
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