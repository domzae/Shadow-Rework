if room == 0
{
	global.insanity = 0;
	global.madness = false;
	global.surrender = false;
	scr_savekeybinds();
}
room_goto(goto);