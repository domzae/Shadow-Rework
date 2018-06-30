/// @description Casting

if global.casting == true
{
	global.casting = false;
	global.castingTime = 0;
	
	alarm[0] = cd;

	if global.madness == false
	{
		global.insanity = global.insanity + insanityGain;
	}
	
	var tempDoT = 0;
	if thisTar.VTApplied == false 
	{
		thisTar.VTApplied = true;
		thisTar.alarm[3] = (3*room_speed)/(1+ global.haste/100)
	}
	else if thisTar.alarm[1] > (dotTime*0.3)*room_speed
	{
		tempDoT = dotTime*0.3*room_speed
	}
	else
	{
		tempDoT = thisTar.alarm[1]
	}
	thisTar.alarm[1] = dotTime*room_speed + tempDoT;
	
	
	if global.talMisery == true
	{
		with inst_swpain
		{
			var tempDoT = 0;
			if other.thisTar.SWPApplied == false 
			{
				other.thisTar.SWPApplied = true;
				other.thisTar.alarm[7] = dotTime*room_speed;
				other.thisTar.alarm[2] = (3*room_speed)/(1+ global.haste/100)
			}
			else if other.thisTar.alarm[0] > (dotTime*0.3)*room_speed
			{
				tempDoT = dotTime*0.3*room_speed
				other.thisTar.alarm[7] = dotTime*room_speed+tempDoT
			}
			else
			{
				tempDoT = other.thisTar.alarm[0]
				other.thisTar.alarm[7] = tempDoT
			}
			other.thisTar.alarm[0] = dotTime*room_speed + tempDoT;
		}
	}
}

/*
var tempDoT = 0;
	if dotApplied == false 
	{
		image_index ++;
		dotApplied = true;
	}
	else if alarm[4] > (dotTime*0.3)*room_speed
	{
		tempDoT = dotTime*0.3*room_speed
	}
	else
	{
		tempDoT = alarm[4]
	}
	alarm[4] = dotTime*room_speed + tempDoT;
	alarm[8] = (3*room_speed)/(1+ global.haste/100)
	
	if global.talMisery == true
	{
		with inst_swpain
		{
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
		}
	}