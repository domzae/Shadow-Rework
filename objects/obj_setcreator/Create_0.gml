y = room_height/18;
var yy = 0;		//left column
var yy2 = 0;	//middle column
var yy3 = 0;	//right column

x = room_width/11*3;			//left column
var xx = room_width/7*4;		//middle column
var xx2 = room_width/8*7;		//right column
var verticalspacing = 75;



/*LEFT COLUMN*/
//Mind Blast
setinsgainMindBlast = instance_create_depth(x, y + yy, 0, obj_settings);
with (setinsgainMindBlast)
{
	userinput = global.insgainMindBlast;
	maxCharacters = 5;
	leftText = "Mind Blast insanity";
	rightText = "per cast";
}
yy += verticalspacing;

//Shadow Word: Death
setinsgainSWDeath = instance_create_depth(x, y + yy, 0, obj_settings);
with (setinsgainSWDeath)
{
	userinput = global.insgainSWDeath;
	maxCharacters = 5;
	leftText = "Shadow Word: Death insanity";
	rightText = "per cast";
}
yy += verticalspacing;
yy += verticalspacing;

//Mind Flay
setinsgainMindFlay = instance_create_depth(x, y + yy, 0, obj_settings);
with (setinsgainMindFlay)
{
	userinput = global.insgainMindFlay;
	maxCharacters = 5;
	leftText = "Mind Flay insanity";
	rightText = "generated over a full channel";
}
yy += verticalspacing;

//Mind Sear
setinsgainMindSear = instance_create_depth(x, y + yy, 0, obj_settings);
with (setinsgainMindSear)
{
	userinput = global.insgainMindSear;
	maxCharacters = 5;
	leftText = "Mind Sear insanity";
	rightText = "generated over a full channel per target";
}
yy += verticalspacing;
yy += verticalspacing;

//Void Bolt
setinsgainVBolt = instance_create_depth(x, y + yy, 0, obj_settings);
with (setinsgainVBolt)
{
	userinput = global.insgainVBolt;
	maxCharacters = 5;
	leftText = "Void Bolt insanity";
	rightText = "per cast";
}
yy += verticalspacing;

//Void Eruption
setinsgainVEruption = instance_create_depth(x, y + yy, 0, obj_settings);
with (setinsgainVEruption)
{
	userinput = global.insgainVEruption;
	maxCharacters = 5;
	leftText = "Void Eruption insanity";
	rightText = "per cast";
}
yy += verticalspacing;
yy += verticalspacing;

//Shadow Word: Pain
setinsgainSWPain = instance_create_depth(x, y + yy, 0, obj_settings);
with (setinsgainSWPain)
{
	userinput = global.insgainSWPain;
	maxCharacters = 5;
	leftText = "Shadow Word: Pain insanity";
	rightText = "per cast";
}
yy += verticalspacing;

//Vampiric Touch
setinsgainVT = instance_create_depth(x, y + yy, 0, obj_settings);
with (setinsgainVT)
{
	userinput = global.insgainVT;
	maxCharacters = 5;
	leftText = "Vampiric Touch insanity";
	rightText = "per cast";
}

/*MIDDLE COLUMN*/

//mind blast cooldown
setcdMindBlast = instance_create_depth(xx, y + yy2, 0, obj_settings);
with (setcdMindBlast)
{
	userinput = global.cdMindBlast;
	maxCharacters = 5;
	leftText = "Mind Blast CD";
	rightText = "GCDs";
}
yy2 += verticalspacing;

//shadow word: death cooldown
setcdSWDeath = instance_create_depth(xx, y + yy2, 0, obj_settings);
with (setcdSWDeath)
{
	userinput = global.cdSWDeath;
	maxCharacters = 5;
	leftText = "Shadow Word: Death CD";
	rightText = "seconds";
}
yy2 += verticalspacing;
yy2 += verticalspacing;
yy2 += verticalspacing;

//sear targets
setsearTargets = instance_create_depth(xx, y + yy2, 0, obj_settings);
with (setsearTargets)
{
	userinput = global.searTargets;
	maxCharacters = 5;
	leftText = "Mind Sear targets";
	rightText = "number of targets hit by a single tick of mind sear";
}
yy2 += verticalspacing;
yy2 += verticalspacing;

//void bolt cooldown
setcdVBolt = instance_create_depth(xx, y + yy2, 0, obj_settings);
with (setcdVBolt)
{
	userinput = global.cdVBolt;
	maxCharacters = 5;
	leftText = "Void Bolt CD";
	rightText = "GCDs - while in Voidform";
}
yy2 += verticalspacing;

//void eruption cooldown
setcdVEruption = instance_create_depth(xx, y + yy2, 0, obj_settings);
with (setcdVEruption)
{
	userinput = global.cdVEruption;
	maxCharacters = 5;
	leftText = "Void Eruption CD";
	rightText = "GCDs - while in Voidform";
}
yy2 += verticalspacing;

//shared void cooldown during madness
setcdSharedVoid = instance_create_depth(xx, y + yy2, 0, obj_settings);
with (setcdSharedVoid)
{
	userinput = global.cdSharedVoid;
	maxCharacters = 5;
	leftText = "Shared Void CD";
	rightText = "GCDs - shared cooldown for Void Bolt and Void Eruption (during Madness)";
}
yy2 += verticalspacing;
yy2 += verticalspacing;

setcdS2M = instance_create_depth(xx, y + yy2, 0, obj_settings);
with (setcdS2M)
{
	userinput = global.cdS2M;
	maxCharacters = 5;
	leftText = "Surrender to Madness CD";
	rightText = "seconds";
}
yy2 += verticalspacing;

//surrender duration
setsurrenderTime = instance_create_depth(xx, y + yy2, 0, obj_settings);
with (setsurrenderTime)
{
	userinput = global.surrenderTime;
	maxCharacters = 5;
	leftText = "Surrender duration";
	rightText = "seconds - duration of Madness when activated by Surrender to Madness";
}

//RIGHT COLUMN
//Haste
sethaste = instance_create_depth(xx2, y + yy3, 0, obj_settings);
with (sethaste)
{
	userinput = global.basehaste;
	maxCharacters = 4;
	leftText = "Base Haste";
	rightText = "% - while Sane";
}
yy3 += verticalspacing;

//drain
setdrain = instance_create_depth(xx2, y + yy3, 0, obj_settings);
with (setdrain)
{
	userinput = room_speed/global.basedrain;
	maxCharacters = 5;
	leftText = "Insanity drain";
	rightText = "per second";
}
yy3 += verticalspacing;
yy3 += verticalspacing;

//Haste VF
setvfhaste = instance_create_depth(xx2, y + yy3, 0, obj_settings);
with (setvfhaste)
{
	userinput = global.vfhaste;
	maxCharacters = 4;
	leftText = "Voidform bonus haste";
	rightText = "% - added to base haste";
}
yy3 += verticalspacing;

//Haste Madness
setmadnesshaste = instance_create_depth(xx2, y + yy3, 0, obj_settings);
with (setmadnesshaste)
{
	userinput = global.madnesshaste;
	maxCharacters = 4;
	leftText = "Madness bonus haste";
	rightText = "% - added to base haste";
}
yy3 += verticalspacing;
yy3 += verticalspacing;

//madness duration
setmadnessTime = instance_create_depth(xx2, y + yy3, 0, obj_settings);
with (setmadnessTime)
{
	userinput = global.madnessTime;
	maxCharacters = 5;
	leftText = "Madness duration";
	rightText = "seconds";
}
yy3 += verticalspacing;

//madness debuff
setsatiatedModifier = instance_create_depth(xx2, y + yy3, 0, obj_settings);
with (setsatiatedModifier)
{
	userinput = (global.satiatedModifier*100)-100;
	maxCharacters = 5;
	leftText = "Satiated debuff";
	rightText = "% - increases insanity drain for " + string(global.satiatedTime) + "s after leaving madness";
}
yy3 += verticalspacing;

//madness debuff timer
setsatiatedTime = instance_create_depth(xx2, y + yy3, 0, obj_settings);
with (setsatiatedTime)
{
	userinput = global.satiatedTime;
	maxCharacters = 5;
	leftText = "Satiated time";
	rightText = "seconds - increases insanity drain by " + string(global.satiatedModifier*100-100) + "% after leaving madness";
}
yy3 += verticalspacing;
yy3 += verticalspacing;








