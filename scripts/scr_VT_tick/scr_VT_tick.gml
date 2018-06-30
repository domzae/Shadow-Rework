//scr_VT_tick(totaldotdamage,targetid)

var focTar = argument[1]

var tickTime = (3*room_speed)/(1+ global.haste/100)			//3s before haste
var ticks = obj_vampirictouch.dotTime/3 //number of ticks in duration

var ticksR = floor(ticks) //ticks rounded
var ticksL = frac(ticks) //ticks leftover

var tickDmg = argument[0]/ticksR //damage / number of ticks


if alarm[1] >= tickTime
{
	alarm[3] = tickTime
}
else if alarm[1] <= 0
{
	/*if ticksL == 0
	{
	}
	else
	{
		tickDmg *= ticksL
	}*/
	if thisVTDur > 0
	{
		tickDmg *= (thisVTDur/tickTime)
		thisVTDur = 0
	}
}
else
{
	thisVTDur = alarm[1]
	alarm[3] = alarm[1]
}
scr_damage(tickDmg,focTar)
