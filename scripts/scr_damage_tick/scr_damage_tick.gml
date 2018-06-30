//scr_damage_tick(totaldotdamage,id)

var tickTime = (3*room_speed)/(1+ global.haste/100)
var ticks = (dotTime*room_speed)/tickTime

var ticksR = floor(ticks) //ticks rounded
var ticksL = frac(ticks) //ticks leftover

var tickDmg = argument[0]/ticksR

if alarm[4] > tickTime
{
	alarm[8] = tickTime
}
else if alarm[4] <= 0
{
	if ticksL == 0
	{
	}
	else
	{
		tickDmg *= ticksL
	}
}
else
{
	alarm[8] = alarm[4]
}

scr_damage(tickDmg)
