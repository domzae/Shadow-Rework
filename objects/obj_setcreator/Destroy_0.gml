//set global vars before switching back to play room

//General
with (sethaste)
{
	global.haste = real(userinput);
	global.basehaste = real(userinput);
}
with (setdrain)
{
	global.drain = room_speed/real(userinput);
	global.basedrain = room_speed/real(userinput);
}
with (setvfhaste)
{
	global.vfhaste = real(userinput);
}
with (setmadnesshaste)
{
	global.madnesshaste = real(userinput);
}
with (setmadnessTime)
{
	global.madnessTime = real(userinput);
}
with (setsurrenderTime)
{
	global.surrenderTime = real(userinput);
}
with (setcdS2M)
{
	global.cdS2M = real(userinput);
}
with (setsurrenderExitIns)
{
	global.surrenderExitIns = real(userinput);
}
with (setmadnessHasteDecay)
{
	global.madnessHasteDecay = real(userinput);
}
with (setaoeTargets)
{
	global.aoeTargets = min(10,real(userinput));
}
with (setsatiatedModifier)
{
	global.satiatedModifier = (real(userinput)+100)/100;
}
with (setsatiatedTime)
{
	global.satiatedTime = real(userinput);
}

with(setspellQueue)
{
	global.spellQueue = real(userinput);
}

//other
with(setdmgMadness)
{
	global.dmgMadness = real(userinput);
}
with(setdmgVBMadness)
{
	global.dmgVBMadness = real(userinput);
}
with(setmaxMastery)
{
	global.maxMastery = real(userinput);
}
with(setbaseCrit)
{
	global.baseCrit = real(userinput);
}
with(setmaxHP)
{
	global.maxHP = real(userinput);
}