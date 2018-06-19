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

if abilityName == "Void Bolt" && instance_exists(inst_VEntropy)
{
	if inst_VEntropy.alarm[0] > global.talVEntropyCDR*room_speed
	{
		inst_VEntropy.alarm[0] -= global.talVEntropyCDR*room_speed
	}
	else if inst_VEntropy.alarm[0] != -1
	{
		inst_VEntropy.alarm[0] = 1
	}
	
}
		
if global.madness == false
{
	global.insanity = global.insanity + insanityGain;
}
		
if dotTime > 0
{
	if dotApplied == false && abilityName != "Void Entropy"
	{
		image_index ++;
	}
	dotApplied = true;
	alarm[4] = dotTime*room_speed;
}