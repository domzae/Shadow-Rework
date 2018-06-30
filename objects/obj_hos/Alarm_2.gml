/// @description channel tick generation

//interrupts the channel generation if clipped by casting or an instant cast
if global.casting == false and global.lastGCDinstant == false
{
	if global.madness == false
		{
			global.insanity = global.insanity + insanityGain/4;
		}
	if global.aoeTargets <= 3
	with obj_enemy
	{
		
		thisDot = other.object_index
		scr_damage(global.dmgHoS/4,0) //damage all if less than 4
	}
	else
	{
		scr_damage(global.dmgHoS/4,thisTar) //damage target
		
		var iInst;
		var dd = 0
		for (var i = 0; i < instance_number(obj_enemy); i++;) //damage 2 more targets
		{
			iInst = instance_find(obj_enemy,i)
			
			if iInst != thisTar
			{
				scr_damage(global.dmgHoS/4,iInst)
				dd++;
				if dd == 2
				{
					break;
				}
			}				
		}
	}
}

// for channeling tick generation
if global.channeling == true
{
	alarm[2] = channelTime*global.hastemultiplier/4+1; //add +1 for rounding, prevent extra tick
}