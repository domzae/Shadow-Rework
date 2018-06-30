/// @description channel tick generation

//interrupts the channel generation if clipped by casting or an instant cast
if global.casting == false and global.lastGCDinstant == false
{
	if global.madness == false
	{
		global.insanity = global.insanity + insanityGain/4;
	}
	with obj_enemy
	{
		thisDot = inst_mindsear
		scr_damage((global.dmgMindSear/4),0)
	}
}

// for channeling tick generation
if global.channeling == true
{
	alarm[2] = channelTime*global.hastemultiplier/4+1; //add +1 for rounding, prevent extra tick
}