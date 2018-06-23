/// @description madness timer
//exit surrender
if global.surrender == true
{
	//global.haste = global.basehaste + 15;

	global.drain = global.basedrain;

	global.surrender = false;
	global.madness = false;
	
	if global.talFotM == true
	{
		if global.insanity > global.talFotMins && obj_talentControl.revdrain = false
		{
			global.drain = -1 * global.drain
			obj_talentControl.revdrain = true;
		}
		else
		{
			obj_talentControl.revdrain = false;
		}
	}
}
else //exit normal madness
{
	//global.haste = global.basehaste;

	global.drain = global.basedrain / global.satiatedModifier;
	alarm[2] = global.satiatedTime*room_speed	//insanity drain debuff

	global.madness = false;
	obj_talentControl.revdrain = false;
}

if global.talAllure == true
{
	obj_allure.dmgAllure = global.talAllureDmg
}
