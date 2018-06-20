if scr_ability_check()
{
	global.lastGCDinstant = false;
		
	global.casting = true;
	global.castingTime = 0;
		
	alarm[3] = castTime*global.hastemultiplier;
}

