/// @description tentacle proc tick

if ticks < 3 && global.madness == false
{
	global.insanity += global.insgainCttV/4;
}

if ticks < 4
{
	alarm[7] = room_speed*1.5; //1.5s per tick
	ticks ++;
}
else
{
	instance_destroy();
}