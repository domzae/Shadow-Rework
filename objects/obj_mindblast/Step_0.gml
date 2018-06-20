/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if global.talMindShatter == true && talMindShatterChargesLeft < global.talMindShatterCharges
{
	for (var i=global.talMindShatterCharges; i > 0 ; i--;)
	{
		if shatterInst[i].alarm[0] != -1 and (shatterInst[i].alarm[0] < alarm[0] or alarm[0] == -1)
		{
			alarm[0] = shatterInst[i].alarm[0]
		}
	}
}