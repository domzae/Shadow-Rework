/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event

//set cd to shared cd for eruption and bolt
if global.madness == true //loops through while in madness
{
	if madnessStart == true  //set shared cd at start of madness
	{
		cdHold = cdhasted;
		cdhasted = global.cdSharedVoid;
		madnessStart = false;
		if alarm[0] > 1
		{
			alarm[0] = -1
			if cdHold > 0
			{
				image_index --;
			}
		}
	}
}
else
{
	if madnessStart == false //revert cooldowns at end of madness
	{
		cdhasted = cdHold;
		if cdhasted == 0
		{
			if cdLeft > 0 and cdLeft != global.gcdLeft
			{
				image_index --;
			}
			cd = 0;

		}
		madnessStart = true;
	}
}
event_inherited();