if scr_ability_check()
{		
	var focTar = global.enemyFocus
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
	scr_damage(global.dmgInitSWPain,focTar)

	var tempDoT = 0;
	if focTar.SWPApplied == false 
	{
		focTar.SWPApplied = true;
		focTar.alarm[7] = dotTime*room_speed;
		focTar.alarm[2] = (3*room_speed)/(1+ global.haste/100)
	}
	else if focTar.alarm[0] > (dotTime*0.3)*room_speed
	{
		tempDoT = dotTime*0.3*room_speed
		focTar.alarm[7] = dotTime*room_speed+tempDoT
	}
	else
	{
		tempDoT = focTar.alarm[0]
		focTar.alarm[7] = tempDoT
	}
	focTar.alarm[0] = dotTime*room_speed + tempDoT;

}

/*
var tempDoT = 0;
	if dotApplied == false 
	{
		image_index ++;
		dotApplied = true;
		alarm[7] = dotTime*room_speed;
	}
	else if alarm[4] > (dotTime*0.3)*room_speed
	{
		tempDoT = dotTime*0.3*room_speed
		alarm[7] = dotTime*room_speed+tempDoT
	}
	else
	{
		tempDoT = alarm[4]
		alarm[7] = tempDoT
	}
	alarm[4] = dotTime*room_speed + tempDoT;
	alarm[8] = (3*room_speed)/(1+ global.haste/100)