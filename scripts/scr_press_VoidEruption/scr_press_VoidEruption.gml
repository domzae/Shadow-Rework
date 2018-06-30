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
				inst_voidbolt.image_index ++;
				inst_voidbolt.alarm[0] = cd;
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
		with obj_enemy
		{
			thisDot = inst_voideruption
			scr_damage(global.dmgVEruption,0)
		}
	}
}