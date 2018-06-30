if scr_ability_check()
{	
	var focTar = global.enemyFocus	
	global.channeling = false;
	global.channelingTime = 0;
		
	global.lastGCDinstant = true;
	
	if cd > 0
	{
		//desaturate image
		image_index ++;
		alarm[0] = cd;
	}
	else
	{
		alarm[0] = global.gcd;
	}
		
		
	if global.madness == false
	{
		global.insanity = global.insanity + insanityGain;
	}
		
	var tempDoT = 0;
	if focTar.VEApplied == false 
	{
		focTar.VEApplied = true;
		focTar.alarm[5] = (3*room_speed)/(1+ global.haste/100) //set tick timer
	}
	else if focTar.alarm[4] > (dotTime*0.3)*room_speed
	{
		tempDoT = dotTime*0.3*room_speed
	}
	else
	{
		tempDoT = focTar.alarm[4]
	}
	focTar.alarm[4] = dotTime*room_speed + tempDoT;

}