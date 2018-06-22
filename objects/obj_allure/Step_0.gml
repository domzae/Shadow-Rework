/// @description do nothing

if allure == false
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
	tooltipText = "Allure to the Void\nYour next Madness gains " + string(global.talAllureDmg) + "% damage";