y = room_height/20;
var yy = 0;		//left column
var yy2 = 0;	//middle column
var yy3 = 0;	//right column

x = 400;			//left column
var mCol = 1000;		//middle column
var rCol = 1600;		//right column
var verticalspacing = 57;



/////////////////
/*LEFT COLUMN*/
/////////////////
//drain
setdrain = instance_create_depth(x, y + yy, 0, obj_settings);
with (setdrain)
{
	userinput = room_speed/global.basedrain;
	maxCharacters = 5;
	leftText = "Insanity drain";
	rightText = "per second";
}
yy += verticalspacing;
//sear targets
setaoeTargets = instance_create_depth(x, y + yy, 0, obj_settings);
with (setaoeTargets)
{
	userinput = global.aoeTargets;
	maxCharacters = 5;
	leftText = "Targets";
	rightText = "(MAX: 10) number of targets hit by aoe abilities, also displays this number of target";
}
yy += verticalspacing;
//Enemy max HP
setmaxHP = instance_create_depth(x, y + yy, 0, obj_settings);
with (setmaxHP)
{
	userinput = global.maxHP;
	maxCharacters = 20;
	leftText = "Enemy max HP";
	rightText = "starting HP on enemies";
}
yy += verticalspacing;
//spell queue
setspellQueue = instance_create_depth(x, y + yy, 0, obj_settings);
with (setspellQueue)
{
	userinput = global.spellQueue;
	maxCharacters = 5;
	leftText = "Spell Queue";
	rightText = "Seconds - amount of time before the CD/GCD an ability will be queued to fire";
}
yy += verticalspacing;
yy += verticalspacing;
//surrender duration
setsurrenderTime = instance_create_depth(x, y + yy, 0, obj_settings);
with (setsurrenderTime)
{
	userinput = global.surrenderTime;
	maxCharacters = 5;
	leftText = "Surrender duration";
	rightText = "seconds - duration of Madness when activated by Surrender to Madness";
}
yy += verticalspacing;

//Surrender Cooldown
setcdS2M = instance_create_depth(x, y + yy, 0, obj_settings);
with (setcdS2M)
{
	userinput = global.cdS2M;
	maxCharacters = 5;
	leftText = "Surrender to Madness CD";
	rightText = "seconds";
}
yy += verticalspacing;
//surrender exit
setsurrenderExitIns = instance_create_depth(x, y + yy, 0, obj_settings);
with (setsurrenderExitIns)
{
	userinput = global.surrenderExitIns;
	maxCharacters = 5;
	leftText = "Surrender exit insanity";
	rightText = "starting insanity when Surrender to Madness expires";
}



/////////////////
/*MIDDLE COLUMN*/
/////////////////
//Haste
sethaste = instance_create_depth(mCol, y + yy2, 0, obj_settings);
with (sethaste)
{
	userinput = global.basehaste;
	maxCharacters = 4;
	leftText = "Base Haste";
	rightText = "% - while Sane";
}
yy2 += verticalspacing;

//Haste VF
setvfhaste = instance_create_depth(mCol, y + yy2, 0, obj_settings);
with (setvfhaste)
{
	userinput = global.vfhaste;
	maxCharacters = 4;
	leftText = "Voidform bonus haste";
	rightText = "% - added to base haste";
}
yy2 += verticalspacing;

//Haste Madness
setmadnesshaste = instance_create_depth(mCol, y + yy2, 0, obj_settings);
with (setmadnesshaste)
{
	userinput = global.madnesshaste;
	maxCharacters = 4;
	leftText = "Madness bonus haste";
	rightText = "% - added to base haste";
}
yy2 += verticalspacing;
yy2 += verticalspacing;
yy2 += verticalspacing;
//madness duration
setmadnessTime = instance_create_depth(mCol, y + yy2, 0, obj_settings);
with (setmadnessTime)
{
	userinput = global.madnessTime;
	maxCharacters = 5;
	leftText = "Madness duration";
	rightText = "seconds";
}
yy2 += verticalspacing;
//Madness damage bonus
setdmgMadness = instance_create_depth(mCol, y + yy2, 0, obj_settings);
with (setdmgMadness)
{
	userinput = global.dmgMadness;
	maxCharacters = 5;
	leftText = "Madness damage bonus";
	rightText = "%";
}
yy2 += verticalspacing;
//Madness VB damage bonus
setdmgVBMadness = instance_create_depth(mCol, y + yy2, 0, obj_settings);
with (setdmgVBMadness)
{
	userinput = global.dmgVBMadness;
	maxCharacters = 5;
	leftText = "Void Bolt damage bonus";
	rightText = "% - Applied instead of the Madness damage bonus";
}
yy2 += verticalspacing;
//Madness Haste decay
setmadnessHasteDecay = instance_create_depth(mCol, y + yy2, 0, obj_settings);
with (setmadnessHasteDecay)
{
	userinput = global.madnessHasteDecay;
	maxCharacters = 1;
	leftText = "Madness Haste Decay";
	rightText = "1 = On\n2 = Off";
}



////////////////
/*RIGHT COLUMN*/
////////////////


//Crit
setbaseCrit = instance_create_depth(rCol, y + yy3, 0, obj_settings);
with (setbaseCrit)
{
	userinput = global.baseCrit;
	maxCharacters = 4;
	leftText = "Critical Strike chance";
	rightText = "% - chance to deal double damage";
}
yy3 += verticalspacing;
//Mastery
setmaxMastery = instance_create_depth(rCol, y + yy3, 0, obj_settings);
with (setmaxMastery)
{
	userinput = global.maxMastery;
	maxCharacters = 5;
	leftText = "Max Mastery bonus";
	rightText = "%\nTwist of Fate\nIncreased damage dealt up to x% based on the targets missing health";
}
yy3 += verticalspacing;
yy3 += verticalspacing;
yy3 += verticalspacing;
yy3 += verticalspacing;

//madness debuff timer
setsatiatedTime = instance_create_depth(rCol, y + yy3, 0, obj_settings);
with (setsatiatedTime)
{
	userinput = global.satiatedTime;
	maxCharacters = 5;
	leftText = "Satiated time";
	rightText = "seconds - increases insanity drain by " + string(global.satiatedModifier*100-100) + "% after leaving madness";
}
yy3 += verticalspacing;
//madness debuff
setsatiatedModifier = instance_create_depth(rCol, y + yy3, 0, obj_settings);
with (setsatiatedModifier)
{
	userinput = (global.satiatedModifier*100)-100;
	maxCharacters = 5;
	leftText = "Satiated debuff";
	rightText = "% - increases insanity drain for " + string(global.satiatedTime) + "s after leaving madness";
}








