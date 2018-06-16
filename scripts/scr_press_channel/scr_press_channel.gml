global.lastGCDinstant = false;
		
global.channeling = true;
global.channelingTime = 0;
		
inst_mindflay.alarm[0] = -1;
inst_mindflay.alarm[1] = -1;
inst_mindflay.alarm[2] = -1;
		
inst_mindsear.alarm[0] = -1;
inst_mindsear.alarm[1] = -1;
inst_mindsear.alarm[2] = -1;
		
alarm[0] = global.gcd;
alarm[1] = channelTime*global.hastemultiplier;
alarm[2] = channelTime*global.hastemultiplier/4;

// Call to the Void proc
var procchance = 60/global.cttvProc * ( 1 - (global.haste/100)); // average seconds per proc
var proc;
if abilityName == "Mind Flay"
{
	proc = irandom(procchance)
	if timeLastProc > room_speed*procchance // if no tentacle proc in last max proc window, give proc
	{
		proc = 0;
	}
	if proc == 0 && !instance_exists(obj_proc)
	{
		instance_create_depth(x+3,y-86,-200,obj_proc);
		timeLastProc = 0;
	}
}