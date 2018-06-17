// Fortress of the Mind
if global.talFotM == true
{
	if global.madness = false
	{
		if round(global.insanity) < global.talFotMins && revdrain == false
		{
			global.drain = -1 * global.drain;
			revdrain = true
		}
		else if round(global.insanity) > global.talFotMins && revdrain == true
		{
			global.drain = -1 * global.drain;
			revdrain = false
		}
		else if round(global.insanity + 0.01) == global.talFotMins
		{
			obj_iControl.alarm[0] += 1
		}
	}
}