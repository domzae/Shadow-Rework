// Call to the Void proc
var proc;

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