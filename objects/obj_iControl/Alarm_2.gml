/// @description satiated timer
//post-madness drain debuff fade
global.drain = global.basedrain;

if global.talFotM == true
{
	if global.insanity > global.talFotMins && obj_talentControl.revdrain = false
	{
		global.drain = -1 * global.drain
		obj_talentControl.revdrain = true;
	}
	else
	{
		obj_talentControl.revdrain = false;
	}
}