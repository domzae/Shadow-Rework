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
with (setsurrenderExitIns)
{
	global.surrenderExitIns = real(userinput);
}
with (setsearTargets)
{
	global.searTargets = real(userinput);
}
with (setsatiatedModifier)
{
	global.satiatedModifier = (real(userinput)+100)/100;
}
with (setsatiatedTime)
{
	global.satiatedTime = real(userinput);
}
with (setcdSharedVoid)
{
	global.cdSharedVoid = real(userinput);
}
with (setCttVrppm)
{
	global.CttVrppm = real(userinput);
}

//CDS

with (setcdMindBlast)
{
	global.cdMindBlast = real(userinput);
}
with (setcdSWDeath)
{
	global.cdSWDeath = real(userinput);
}
with (setcdVBolt)
{
	global.cdVBolt = real(userinput);
}
with (setcdVEruption)
{
	global.cdVEruption = real(userinput);
}
with (setcdS2M)
{
	global.cdS2M = real(userinput);
}

//Insanity gains
with (setinsgainMindBlast)
{
	global.insgainMindBlast = real(userinput);
}
with (setinsgainSWDeath)
{
	global.insgainSWDeath = real(userinput);
}
with (setinsgainVBolt)
{
	global.insgainVBolt = real(userinput);
}

with (setinsgainVEruption)
{
	global.insgainVEruption = real(userinput);
}
with (setinsgainMindFlay)
{
	global.insgainMindFlay = real(userinput);
}
with (setinsgainMindSear)
{
	global.insgainMindSear = real(userinput);
}
with (setinsgainSWPain)
{
	global.insgainSWPain = real(userinput);
}
with (setinsgainVT)
{
	global.insgainVT = real(userinput);
}
with(setinsgainCttV)
{
	global.insgainCttV = real(userinput);
}