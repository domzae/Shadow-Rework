if room == 0
{
	global.insanity = 0;
	global.madness = false;
	global.surrender = false;
	instance_destroy(obj_proc); //destroy procs to prevent keybind interference
	scr_savekeybinds();
}
room_goto(goto);