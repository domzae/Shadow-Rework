/// @description do nothing

if global.madness == true
{
	if alarm[0] != -1 or alarm[1] != -1  //turn off reduction/increase when entering madness
	{
		//dmgAllure = global.talAllureDmg*(alarm[0]/(global.talAllureDur*room_speed))
		alarm[0] = -1
		alarm[1] = -1
	}
}
else if global.sanity == false //start reduction cycle while in voidform
{
	if alarm[0] = -1
	{
		alarm[0] = room_speed
		alarm[1] = -1
	}
}
else //start increase cycle while sane
{
	if alarm[1] = -1
	{
		alarm[1] = room_speed/2
		alarm[0] = -1
	}
}
tooltipText = "Allure of the Void\nYour Madness gains " + string(global.talAllureDmg) + "% damage";

/*if allure == false
{
	dmgAllure = 0;
}
else if global.madness == true
{
	if alarm[0] != -1
	{
		dmgAllure = global.talAllureDmg*(alarm[0]/(global.talAllureDur*room_speed))
		alarm[0] = -1
	}
}
else if alarm[0] == -1
{
	dmgAllure = 0
}
else
{
	dmgAllure = global.talAllureDmg*(alarm[0]/(global.talAllureDur*room_speed))
}
	tooltipText = "Allure of the Void\nYour next Madness gains " + string(global.talAllureDmg) + "% damage";*/