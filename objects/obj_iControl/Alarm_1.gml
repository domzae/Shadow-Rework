/// @description madness timer
//exit surrender
if global.surrender == true
{
	//global.haste = global.basehaste + 15;

	global.drain = global.basedrain;

	global.surrender = false;
	global.madness = false;
}
else //exit normal madness
{
	//global.haste = global.basehaste;

	global.drain = global.basedrain / global.satiatedModifier;
	alarm[2] = global.satiatedTime*room_speed	//insanity drain debuff

	global.madness = false;
}

