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

//Attuned to the Void
if global.talAttV == true
{
	if global.sanity == false and global.madness == false
	{
		if alarm[0] == -1
		{
			alarm[0] = room_speed*global.talAttVInterval
		}
	}
}

