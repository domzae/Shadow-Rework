y = room_height/20;
var yy = 0;		//left column
var yy2 = 0;	//middle column
var yy3 = 0;	//right column

x = room_width/11*3;			//left column
var mCol = room_width/7*4;		//middle column
var rCol = room_width/8*7;		//right column
var verticalspacing = 57;



/*LEFT COLUMN*/
//Mind Blast
setdmgMindBlast = instance_create_depth(x, y + yy, 0, obj_settings);
with (setdmgMindBlast)
{
	userinput = global.dmgMindBlast;
	maxCharacters = 5;
	leftText = "Mind Blast damage";
	rightText = "per cast";
}
yy += verticalspacing;

//Shadow Word: Death
setdmgSWDeath = instance_create_depth(x, y + yy, 0, obj_settings);
with (setdmgSWDeath)
{
	userinput = global.dmgSWDeath;
	maxCharacters = 5;
	leftText = "Shadow Word: Death damage";
	rightText = "per cast";
}
yy += verticalspacing;
yy += verticalspacing;

//Mind Sear
setdmgMindSear = instance_create_depth(x, y + yy, 0, obj_settings);
with (setdmgMindSear)
{
	userinput = global.dmgMindSear;
	maxCharacters = 5;
	leftText = "Mind Sear damage";
	rightText = "per channel, per target";
}
yy += verticalspacing;

//Mind Flay
setdmgMindFlay = instance_create_depth(x, y + yy, 0, obj_settings);
with (setdmgMindFlay)
{
	userinput = global.dmgMindFlay;
	maxCharacters = 5;
	leftText = "Mind Flay damage";
	rightText = "per channel";
}
yy += verticalspacing;

//CttV
setdmgCttV = instance_create_depth(x, y + yy, 0, obj_settings);
with (setdmgCttV)
{
	userinput = global.dmgCttV;
	maxCharacters = 5;
	leftText = "Call to the Void damage";
	rightText = "over 6 seconds";
}
yy += verticalspacing;
yy += verticalspacing;

//Void Bolt
setdmgVBolt = instance_create_depth(x, y + yy, 0, obj_settings);
with (setdmgVBolt)
{
	userinput = global.dmgVBolt;
	maxCharacters = 5;
	leftText = "Void Bolt damage";
	rightText = "per cast";
}
yy += verticalspacing;

//Void Eruption
setdmgVEruption = instance_create_depth(x, y + yy, 0, obj_settings);
with (setdmgVEruption)
{
	userinput = global.dmgVEruption;
	maxCharacters = 5;
	leftText = "Void Eruption damage";
	rightText = "per cast, per target";
}
yy += verticalspacing;
yy += verticalspacing;

//Shadow Word: Pain
setdmgSWPain = instance_create_depth(x, y + yy, 0, obj_settings);
with (setdmgSWPain)
{
	userinput = global.dmgSWPain;
	maxCharacters = 5;
	leftText = "Shadow Word: Pain damage";
	rightText = "over its duration";
}
yy += verticalspacing;

//Shadow Word: Pain
setdmgInitSWPain = instance_create_depth(x, y + yy, 0, obj_settings);
with (setdmgInitSWPain)
{
	userinput = global.dmgInitSWPain;
	maxCharacters = 5;
	leftText = "Shadow Word: Pain initial damage";
	rightText = "on cast";
}
yy += verticalspacing;

//Vampiric Touch
setdmgVT = instance_create_depth(x, y + yy, 0, obj_settings);
with (setdmgVT)
{
	userinput = global.dmgVT;
	maxCharacters = 5;
	leftText = "Vampiric Touch damage";
	rightText = "over its duration";
}
yy += verticalspacing;

/////////////////
/*MIDDLE COLUMN*/
/////////////////
//Dark Void damage

setdmgDarkVoid = instance_create_depth(mCol, y + yy2, 0, obj_settings);
with (setdmgDarkVoid)
{
	userinput = global.dmgDarkVoid;
	maxCharacters = 5;
	leftText = "Dark Void damage";
	rightText = "per target";
}
yy2 += verticalspacing;

//Hymn of Sorrow damage
setdmgHoS = instance_create_depth(mCol, y + yy2, 0, obj_settings);
with (setdmgHoS)
{
	userinput = global.dmgHoS;
	maxCharacters = 5;
	leftText = "Hymn of Sorrow damage";
	rightText = "per channel, per target";
}
yy2 += verticalspacing;

//Void Entropy damage
setdmgVoidEntropy = instance_create_depth(mCol, y + yy2, 0, obj_settings);
with (setdmgVoidEntropy)
{
	userinput = global.dmgVoidEntropy;
	maxCharacters = 5;
	leftText = "Void Entropy damage";
	rightText = "over its duration";
}
yy2 += verticalspacing;
yy2 += verticalspacing;



////////////////
/*RIGHT COLUMN*/
////////////////

//Madness damage bonus
setdmgMadness = instance_create_depth(rCol, y + yy3, 0, obj_settings);
with (setdmgMadness)
{
	userinput = global.dmgMadness;
	maxCharacters = 5;
	leftText = "Madness damage bonus";
	rightText = "%";
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
yy3 += verticalspacing;
//Enemy max HP
setmaxHP = instance_create_depth(rCol, y + yy3, 0, obj_settings);
with (setmaxHP)
{
	userinput = global.maxHP;
	maxCharacters = 20;
	leftText = "Enemy max HP";
	rightText = "starting HP on enemies";
}
//aoe targets
yy3 += verticalspacing;
//sear targets
setaoeTargets = instance_create_depth(rCol, y + yy3, 0, obj_settings);
with (setaoeTargets)
{
	userinput = global.aoeTargets;
	maxCharacters = 5;
	leftText = "Targets";
	rightText = "(MAX: 10) number of targets hit by aoe abilities, also displays this number of target";
}