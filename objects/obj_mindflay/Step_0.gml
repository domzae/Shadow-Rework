/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


//tentacle proc
timeLastProc ++;
clamp(timeLastProc,0,1000*room_speed)
timeLastAttempt ++;
clamp(timeLastAttempt,0,1000*room_speed)
	
var procinterval = 60/global.CttVrppm * ( 1 - (global.haste/100)); // average seconds per proc
var unlucky = max(1, 1 + 3 * ((timeLastProc/room_speed) / procinterval - 1.5)); //bad luck protection
procchance = unlucky * global.CttVrppm * (1 + (global.haste/100)) * min(timeLastAttempt/room_speed, 10); //proc chance percentage
	

mouseoverText = "Has a chance (" + string(global.CttVrppm) + " RPPM) to proc a tentacle,\ngenerating " + string(global.insgainCttV) + " insanity over 6s . Max 1.\nCurrent proc chance: " + string_format(procchance,3,0) + "%";
	