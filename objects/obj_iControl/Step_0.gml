if global.surrender == true
{
	if drainWasPause == true
	{
		alarm[0] = 1
		drainWasPause = false
	}
	
	if global.surrenderStart = true		//set things for surrender
	{
		
		global.drain = room_speed/((100-global.surrenderExitIns)/global.surrenderTime);
		alarm[2] = -1;
		alarm[1] = -1;
	
		global.haste = global.basehaste + global.madnesshaste;

		
		alarm[1] = global.surrenderTime*room_speed	//timer to end madness, revert to sanity/voidform in here
		global.surrenderStart = false;
		madnessTimeLeft = room_speed*global.surrenderTime
		
		global.insanity = 100;
		global.madness = true;
		global.sanity = false;
		
	}
	else//haste reduction, madness reduction
	{
		if global.madnessHasteDecay == true
		{
			global.haste -= ((global.madnesshaste-global.vfhaste)/global.surrenderTime)/room_speed;
		}
		madnessTimeLeft -= 1;
	}
}

else if global.madness == false // sanity<->voidform haste
{
	if global.drainPause == true
	{
		alarm[0] = -1
		drainWasPause = true
	}
	else if drainWasPause == true
	{
		alarm[0] = 1
		drainWasPause = false
	}
	
	if global.insanity > 49 and global.insanity < 100 //voidform
	{
		global.haste = global.basehaste + global.vfhaste ;
		global.sanity = false;
		
		/*if global.talAllure == true
		{
			if obj_allure.allure == false
			{
				obj_allure.alarm[0] = global.talAllureDur*room_speed
				obj_allure.allure = true
			}
		}*/
	}

	else if global.insanity < 50 //sanity
	{
		global.haste = global.basehaste;
		global.sanity = true;
	}
	else
	{
		global.sanity = false;
		global.madness = true;
		madnessStart = true;
	}
}
else //madness start
{
	if drainWasPause == true
	{
		alarm[0] = 1
		drainWasPause = false
	}
	
	if madnessStart = true		//set things for madness
	{	
		alarm[2] = -1;
		global.drain = room_speed/(100/global.madnessTime);
	
		global.haste = global.basehaste + global.madnesshaste;
	
		alarm[1] = global.madnessTime*room_speed	//timer to end madness, revert to sanity/voidform in here
		madnessStart = false;
		madnessTimeLeft = room_speed*global.madnessTime
	}
	else //haste reduction, madness reduction
	{
		if global.madnessHasteDecay == true
		{
			global.haste -= (global.madnesshaste/global.madnessTime)/room_speed;
		}
		madnessTimeLeft -= 1;
	}
}

