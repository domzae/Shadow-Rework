/// @description tentacle proc tick

if ticks < 4 && global.madness == false
{
	global.insanity += global.insgainCttV/4;
}

if ticks < 4
{
	scr_damage(global.dmgCttV/4,global.enemyFocus)
	alarm[7] = room_speed*1.5; //1.5s per tick
	ticks ++;
}
else
{
	firstTick = true
	instance_destroy();
}
firstTick = false