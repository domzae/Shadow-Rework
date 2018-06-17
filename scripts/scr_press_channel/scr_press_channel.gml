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
var proc;


if abilityName == "Mind Flay"
{
	proc = irandom(floor(100/procchance))
	if proc < 1 && !instance_exists(obj_proc)
	{
		instance_create_depth(x+3,y-86,-200,obj_proc);
		timeLastProc = 0;
		timeLastAttempt = 0;
	}
	else if !instance_exists(obj_proc)
	{
		timeLastAttempt = 0;
	}
}