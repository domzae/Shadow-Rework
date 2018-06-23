/// @description VF - allure reduce

if dmgAllure > 0
{
	dmgAllure = max(dmgAllure-global.talAllureDmg/global.talAllureDur,0)
	alarm[1] = room_speed
}
else
{
	//nothing
}
