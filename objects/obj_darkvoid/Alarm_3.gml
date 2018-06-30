/// @description Casting

if global.casting == true
{
	global.casting = false;
	global.castingTime = 0;
	
	//desaturate image
	if cd > 0 
	{
		image_index ++;
	}
	
	alarm[0] = cd;

	if global.madness == false
	{
		global.insanity = global.insanity + insanityGain;
	}
	
	with obj_enemy
	{
		
			var tempDoT = 0;
			if SWPApplied == false 
			{
				SWPApplied = true;
				alarm[7] = inst_swpain.dotTime*room_speed;
				alarm[2] = (3*room_speed)/(1+ global.haste/100)
			}
			else if alarm[0] > (inst_swpain.dotTime*0.3)*room_speed
			{
				tempDoT = inst_swpain.dotTime*0.3*room_speed
				alarm[7] = inst_swpain.dotTime*room_speed+tempDoT
			}
			else
			{
				tempDoT = alarm[0]
				alarm[7] = tempDoT
			}
			alarm[0] = inst_swpain.dotTime*room_speed + tempDoT;
			
			thisDot = other.object_index
			scr_damage(global.dmgDarkVoid,0)
	}
}
