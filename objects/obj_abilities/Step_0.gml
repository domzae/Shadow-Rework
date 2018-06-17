//start cd or gcd
if alarm_get(0) > 0 and cd > 0
{
	cdLeft = alarm[0]/room_speed;
}
else
{
	cdLeft = global.gcdLeft;
}


//set cd to shared cd for eruption and bolt
if (global.madness == true and (abilityName == "Void Eruption" or abilityName == "Void Bolt"))
{
	if madnessStart == true 
	{
		cdHold = cdhasted;
		cdhasted = global.cdSharedVoid;
		madnessStart = false;
		if alarm[0] > 1
		{
			alarm[0] = -1
			if abilityName == "Void Eruption"
			{
				image_index --;
			}
		}
	}
}
else
{
	if madnessStart == false
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

if cdhasted > 0 //update cooldown for cooldowns that are defined by haste
{
	cd = cdhasted*global.gcd;
}

if abilityName == "Shadow Word: Death" //update SWD insanity
{
	insanityGain = global.insgainSWDeath + global.insgainSWDeath*obj_debuff_SWD.debuffLeft;
}

if abilityName == "Mind Flay" //tentacle proc
{
	timeLastProc ++;
	clamp(timeLastProc,0,1000*room_speed)
	timeLastAttempt ++;
	clamp(timeLastAttempt,0,1000*room_speed)
	
	var procinterval = 60/global.CttVrppm * ( 1 - (global.haste/100)); // average seconds per proc
	var unlucky = max(1, 1 + 3 * ((timeLastProc/room_speed) / procinterval - 1.5)); //bad luck protection
	procchance = unlucky * global.CttVrppm * (1 + (global.haste/100)) * min(timeLastAttempt/room_speed, 10); //proc chance percentage
	
	

	mouseoverText = "Has a chance (" + string(global.CttVrppm) + " RPPM) to proc a tentacle,\ngenerating " + string(global.insgainCttV) + " insanity over 6s . Max 1.\nCurrent proc chance: " + string_format(procchance,5,1) + "%";
	
}

//set binding
var k=keyboard_lastkey;
var c=keyboard_lastchar;

if (setbinding == true and (k > 47 and k < 91))
{
	keybind = keyboard_lastchar;
	setbinding = false;
}