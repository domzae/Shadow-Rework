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
		
		var VBDmg = global.dmgVBolt
		if global.talVoidlord == true
		{
			if obj_voidLord.alarm[8] == -1
			{
				obj_voidLord.alarm[8] = room_speed*global.talVoidlordDur;
			}
			obj_voidLord.stacks ++;
			VBDmg *= (1+ obj_voidLord.dmgVoidLord/100)
		}
		if global.madness == true
		{
			//VBDmg *= (1+(global.dmgVBMadness - global.dmgMadness)/100)
		}
		scr_damage(VBDmg,global.enemyFocus)
	}
}