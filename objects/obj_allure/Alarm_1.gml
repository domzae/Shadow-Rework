/// @description Sane - allure increase

if dmgAllure < global.talAllureDmg
{
	dmgAllure = min(dmgAllure+global.talAllureDmg/global.talAllureDur,global.talAllureDmg)
	alarm[0] = room_speed/2
}
else
{
	//nothing
}
