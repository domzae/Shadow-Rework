//scr_VE_tick(totaldotdamage,targetid)

var focTar = argument[1]

var tickTime = (3*room_speed)/(1+ global.haste/100)
var ticks = obj_voidentropy.dotTime/3

var ticksR = floor(ticks) //ticks rounded
var ticksL = frac(ticks) //ticks leftover

var tickDmg = argument[0]/ticksR

if alarm[4] > tickTime
{
	alarm[5] = tickTime
}
else if alarm[4] <= 0
{
	if thisVEDur > 0
	{
		tickDmg *= (thisVEDur/tickTime)
		thisVEDur = 0
	}
}
else
{
	thisVEDur = alarm[4]
	alarm[5] = alarm[4]
}
scr_damage(tickDmg,focTar)
