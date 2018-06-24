//scr_VE_tick(totaldotdamage,targetid)

var focTar = argument[1]

var tickTime = (3*room_speed)/(1+ global.haste/100)
var ticks = (obj_voidentropy.dotTime*room_speed)/tickTime

var ticksR = floor(ticks) //ticks rounded
var ticksL = frac(ticks) //ticks leftover

var tickDmg = argument[0]/ticksR

if alarm[4] > tickTime
{
	scr_damage(tickDmg,focTar)
	alarm[5] = tickTime
}
else if alarm[4] <= 0
{
	if ticksL == 0
	{
		scr_damage(tickDmg,focTar)
	}
	else
	{
		scr_damage(tickDmg*ticksL,focTar)
	}
}
else
{
	scr_damage(tickDmg,focTar)
	alarm[5] = alarm[4]
}
