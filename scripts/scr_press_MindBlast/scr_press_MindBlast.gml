var maxcd = max(global.gcdLeft,cdLeft)
if global.gcdLeft == 0 and (cdLeft == 0 or inst_mindblast.talMindShatterChargesLeft > 0) and global.casting = false
{	
	//set gcd
	obj_gcd.alarm[0] = global.gcd;
	global.lastGCDinstant = false;
		
	global.casting = true;
	global.castingTime = 0;
		
	alarm[3] = castTime*global.hastemultiplier;
	thisTar = global.enemyFocus
}
else if maxcd < global.spellQueue
{
	with obj_abilities
	{
		alarm[10] = -1
	}
	alarm[10] = maxcd*room_speed
	
	return(false);
}