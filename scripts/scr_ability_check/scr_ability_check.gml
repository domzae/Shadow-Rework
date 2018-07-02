var maxcd = max(global.gcdLeft,cdLeft)

if global.gcdLeft == 0 and (cdLeft == 0 or object_index == obj_mindblast) and global.casting == false
{	
	//set gcd
	obj_gcd.alarm[0] = global.gcd;
	
	//stop current channels
	global.channeling = false;
	global.channelingTime = 0;
	global.castingTime = 0
	
	if instance_exists(inst_HoS)
	{
		inst_HoS.alarm[1] = -1;
		global.drainPause = false
		inst_HoS.alarm[2] = -1;
	}
	
	thisTar = global.enemyFocus
	ds_grid_add(obj_damage.damageGrid,4,keyid,1)
	return(true);	
}
else if maxcd < global.spellQueue //ability can't be pressed until 1 step after queue ends
{
	with obj_abilities
	{
		alarm[9] = -1
		bypass = false 
		alarm[10] = -1
	}
	
	if maxcd == 0
	{
		bypass = true
		alarm[10] = 1
	}
	else
	{
		//alarm[9] = maxcd*room_speed + 1
		bypass = true
		alarm[10] = maxcd*room_speed
	}
	return(false);
}
else 
{
	return(false);
}