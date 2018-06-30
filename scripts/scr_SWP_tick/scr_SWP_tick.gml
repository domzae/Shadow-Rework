//scr_SWP_tick(totaldotdamage,targetid)

var focTar = argument[1]

var tickTime = (3*room_speed)/(1+ global.haste/100)
var ticks = obj_swpain.dotTime/3

var ticksR = floor(ticks) //ticks rounded
var ticksL = frac(ticks) //ticks leftover

var tickDmg = argument[0]/ticksR

if alarm[0] > tickTime
{
	alarm[2] = tickTime
}
else if alarm[0] <= 0
{
	if thisSWPDur > 0
	{
		tickDmg *= (thisSWPDur/tickTime)
		thisSWPDur = 0
	}
}
else
{
	thisSWPDur = alarm[0]
	alarm[2] = alarm[0]
}
scr_damage(tickDmg,focTar)
