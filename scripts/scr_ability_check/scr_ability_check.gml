var maxcd = max(global.gcdLeft,cdLeft)
if global.gcdLeft == 0 and cdLeft == 0 and global.casting = false
{	
	//set gcd
	obj_gcd.alarm[0] = global.gcd;
	
	//stop current channels
	global.channeling = false;
	global.channelingTime = 0;
	
	if instance_exists(inst_HoS)
	{
		inst_HoS.alarm[1] = -1;
		global.drainPause = false
		inst_HoS.alarm[2] = -1;
	}
	
	thisTar = global.enemyFocus
	
	return(true);	
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
else
{
	return(false);
}