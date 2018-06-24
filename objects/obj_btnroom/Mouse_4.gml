if room == 0
{
	global.insanity = 0;
	global.madness = false;
	global.surrender = false;
	instance_destroy(obj_proc); //destroy procs to prevent keybind interference
	instance_activate_all()
	alarm[1] = 1

}
alarm[0] = 2

