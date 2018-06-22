if global.sanity == false
{
	if scr_ability_check()
	{
		global.lastGCDinstant = true;
	
		if cd > 0
		{
			//desaturate image
			image_index ++;
			alarm[0] = cd;
			if global.madness == true
			{
				inst_voideruption.image_index ++;
				inst_voideruption.alarm[0] = cd;
			}
		}
		else
		{
			alarm[0] = global.gcd;
		}

		if instance_exists(inst_VEntropy)
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
		
		if global.talVoidlord == true
		{
			if obj_voidLord.alarm[8] == -1
			{
				obj_voidLord.alarm[8] = room_speed*global.talVoidlordDur;
			}
			obj_voidLord.stacks ++;
		}
	}
}