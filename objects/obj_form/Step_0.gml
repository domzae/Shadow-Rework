debuffLeft = obj_iControl.alarm[2]/room_speed;

if global.madness == true
{
	tooltipText = "Madness\nHaste increased by " + string(global.madnesshaste) + "%\nDamage increased by " + string(global.dmgMadness) + "%\nVoid Bolt damage increased by " + string(global.dmgVBMadness) + "%";
}
else if global.sanity == false
{
	tooltipText = "Voidform\nHaste increased by " + string(global.vfhaste) + "%\nAccess to Void Bolt and Void Eruption"
}