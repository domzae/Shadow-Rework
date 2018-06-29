y = room_height/20;
var yy = 0;		//left column
var yy2 = 0;	//middle column
var yy3 = 0;	//right column
var yy4 = 0;	//far right column

x = 600;		//left column
mCol = x+200;	//middle column
rCol = x+400;	//right column
rCol2 = x+800;	//far right column
var verticalspacing = 57;



/*LEFT COLUMN*/
//Mind Blast
setdmgMindBlast = instance_create_depth(x, y + yy, 0, obj_settings);
with (setdmgMindBlast)
{
	userinput = global.dmgMindBlast;
	maxCharacters = 5;
	leftText = "Mind Blast";
	rightText = "per cast";
}
yy += verticalspacing;

//Shadow Word: Death
setdmgSWDeath = instance_create_depth(x, y + yy, 0, obj_settings);
with (setdmgSWDeath)
{
	userinput = global.dmgSWDeath;
	maxCharacters = 5;
	leftText = "Shadow Word: Death";
	rightText = "per cast";
}
yy += verticalspacing;
//Mind Flay
setdmgMindFlay = instance_create_depth(x, y + yy, 0, obj_settings);
with (setdmgMindFlay)
{
	userinput = global.dmgMindFlay;
	maxCharacters = 5;
	leftText = "Mind Flay";
	rightText = "per channel";
}
yy += verticalspacing;

//Mind Sear
setdmgMindSear = instance_create_depth(x, y + yy, 0, obj_settings);
with (setdmgMindSear)
{
	userinput = global.dmgMindSear;
	maxCharacters = 5;
	leftText = "Mind Sear";
	rightText = "per channel, per target";
}
yy += verticalspacing;
//CttV
setdmgCttV = instance_create_depth(x, y + yy, 0, obj_settings);
with (setdmgCttV)
{
	userinput = global.dmgCttV;
	maxCharacters = 5;
	leftText = "Call to the Void";
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
	leftText = "Void Bolt";
	rightText = "per cast";
}
yy += verticalspacing;

//Void Eruption
setdmgVEruption = instance_create_depth(x, y + yy, 0, obj_settings);
with (setdmgVEruption)
{
	userinput = global.dmgVEruption;
	maxCharacters = 5;
	leftText = "Void Eruption";
	rightText = "per cast, per target";
}
yy += verticalspacing;

//Shadow Word: Pain initial
setdmgInitSWPain = instance_create_depth(x, y + yy, 0, obj_settings);
with (setdmgInitSWPain)
{
	userinput = global.dmgInitSWPain;
	maxCharacters = 5;
	leftText = "Shadow Word: Pain initial";
	rightText = "on cast";
}
yy += verticalspacing;

//Shadow Word: Pain
setdmgSWPain = instance_create_depth(x, y + yy, 0, obj_settings);
with (setdmgSWPain)
{
	userinput = global.dmgSWPain;
	maxCharacters = 5;
	leftText = "Shadow Word: Pain";
	rightText = "over its duration";
}
yy += verticalspacing;

//Vampiric Touch
setdmgVT = instance_create_depth(x, y + yy, 0, obj_settings);
with (setdmgVT)
{
	userinput = global.dmgVT;
	maxCharacters = 5;
	leftText = "Vampiric Touch";
	rightText = "over its duration";
}
yy += verticalspacing;
yy += verticalspacing;

//Void Entropy damage
setdmgVoidEntropy = instance_create_depth(x, y + yy, 0, obj_settings);
with (setdmgVoidEntropy)
{
	userinput = global.dmgVoidEntropy;
	maxCharacters = 5;
	leftText = "Void Entropy";
	rightText = "over its duration";
}
yy += verticalspacing;
//Dark Void damage

setdmgDarkVoid = instance_create_depth(x, y + yy, 0, obj_settings);
with (setdmgDarkVoid)
{
	userinput = global.dmgDarkVoid;
	maxCharacters = 5;
	leftText = "Dark Void";
	rightText = "per target";
}
yy += verticalspacing;

//Hymn of Sorrow damage
setdmgHoS = instance_create_depth(x, y + yy, 0, obj_settings);
with (setdmgHoS)
{
	userinput = global.dmgHoS;
	maxCharacters = 5;
	leftText = "Hymn of Sorrow";
	rightText = "per channel, per target";
}

/////////////////
/*MIDDLE COLUMN*/
/////////////////

setinsgainMindBlast = instance_create_depth(mCol, y + yy2, 0, obj_settings);
with (setinsgainMindBlast)
{
	userinput = global.insgainMindBlast;
	maxCharacters = 5;
	leftText = "" //Text = "Mind Blast";
	rightText = "per cast";
}
yy2 += verticalspacing;

//Shadow Word: Death
setinsgainSWDeath = instance_create_depth(mCol, y + yy2, 0, obj_settings);
with (setinsgainSWDeath)
{
	userinput = global.insgainSWDeath;
	maxCharacters = 5;
	leftText = "" //Text = "Shadow Word: Death";
	rightText = "per cast";
}
yy2 += verticalspacing;

//Mind Flay
setinsgainMindFlay = instance_create_depth(mCol, y + yy2, 0, obj_settings);
with (setinsgainMindFlay)
{
	userinput = global.insgainMindFlay;
	maxCharacters = 5;
	leftText = "" //Text = "Mind Flay";
	rightText = "generated over a full channel";
}
yy2 += verticalspacing;

//Mind Sear
setinsgainMindSear = instance_create_depth(mCol, y + yy2, 0, obj_settings);
with (setinsgainMindSear)
{
	userinput = global.insgainMindSear;
	maxCharacters = 5;
	leftText = "" //Text = "Mind Sear";
	rightText = "generated over a full channel per target";
}
yy2 += verticalspacing;

//CttV
setinsgainCttV = instance_create_depth(mCol, y + yy2, 0, obj_settings);
with (setinsgainCttV)
{
	userinput = global.insgainCttV;
	maxCharacters = 5;
	leftText = "" //Text = "Call to the Void";
	rightText = "generated by a tentacle proc over 6 seconds";
}
yy2 += verticalspacing;
yy2 += verticalspacing;

//Void Bolt
setinsgainVBolt = instance_create_depth(mCol, y + yy2, 0, obj_settings);
with (setinsgainVBolt)
{
	userinput = global.insgainVBolt;
	maxCharacters = 5;
	leftText = "" //Text = "Void Bolt";
	rightText = "per cast";
}
yy2 += verticalspacing;

//Void Eruption
setinsgainVEruption = instance_create_depth(mCol, y + yy2, 0, obj_settings);
with (setinsgainVEruption)
{
	userinput = global.insgainVEruption;
	maxCharacters = 5;
	leftText = "" //Text = "Void Eruption";
	rightText = "per cast";
}
yy2 += verticalspacing;
yy2 += verticalspacing;

//Shadow Word: Pain
setinsgainSWPain = instance_create_depth(mCol, y + yy2, 0, obj_settings);
with (setinsgainSWPain)
{
	userinput = global.insgainSWPain;
	maxCharacters = 5;
	leftText = "" //Text = "Shadow Word: Pain";
	rightText = "per cast";
}
yy2 += verticalspacing;

//Vampiric Touch
setinsgainVT = instance_create_depth(mCol, y + yy2, 0, obj_settings);
with (setinsgainVT)
{
	userinput = global.insgainVT;
	maxCharacters = 5;
	leftText = "" //Text = "Vampiric Touch";
	rightText = "per cast";
}
yy2 += verticalspacing;
yy2 += verticalspacing;

//Void Entropy ins
setinsgainVEntropy = instance_create_depth(mCol, y + yy2, 0, obj_settings);
with (setinsgainVEntropy)
{
	userinput = global.talVEntropyins;
	maxCharacters = 5;
	leftText = "" //Text = "Void Entropy";
	rightText = "per cast";
}
yy2 += verticalspacing;

//Dark Void ins
setinsgainDV = instance_create_depth(mCol, y + yy2, 0, obj_settings);
with (setinsgainDV)
{
	userinput = global.talDarkVoidins;
	maxCharacters = 5;
	leftText = "" //Text = "Dark Void";
	rightText = "per target";
}
yy2 += verticalspacing;

//Hymn of Sorrow ins
setinsgainHoS = instance_create_depth(mCol, y + yy2, 0, obj_settings);
with (setinsgainHoS)
{
	userinput = global.talHoSins;
	maxCharacters = 5;
	leftText = "" //Text = "Hymn of Sorrow";
	rightText = "over its duration";
}





////////////////
/*RIGHT COLUMN*/
////////////////

setcdMindBlast = instance_create_depth(rCol, y + yy3, 0, obj_settings);
with (setcdMindBlast)
{
	userinput = global.cdMindBlast;
	maxCharacters = 5;
	leftText = "" //leftText = "Mind Blast CD";
	rightText = "GCDs";
}
yy3 += verticalspacing;

//shadow word: death cooldown
setcdSWDeath = instance_create_depth(rCol, y + yy3, 0, obj_settings);
with (setcdSWDeath)
{
	userinput = global.cdSWDeath;
	maxCharacters = 5;
	leftText = "" //leftText = "Shadow Word: Death CD";
	rightText = "seconds";
}
yy3 += verticalspacing;
yy3 += verticalspacing;
yy3 += verticalspacing;
yy3 += verticalspacing;
yy3 += verticalspacing;

//void bolt cooldown
setcdVBolt = instance_create_depth(rCol, y + yy3, 0, obj_settings);
with (setcdVBolt)
{
	userinput = global.cdVBolt;
	maxCharacters = 5;
	leftText = "" //leftText = "Void Bolt CD";
	rightText = "GCDs - while in Voidform";
}
yy3 += verticalspacing;

//void eruption cooldown
setcdVEruption = instance_create_depth(rCol, y + yy3, 0, obj_settings);
with (setcdVEruption)
{
	userinput = global.cdVEruption;
	maxCharacters = 5;
	leftText = "" //leftText = "Void Eruption CD";
	rightText = "GCDs - while in Voidform";
}
yy3 += verticalspacing;
yy3 += verticalspacing;
yy3 += verticalspacing;
yy3 += verticalspacing;
yy3 += verticalspacing;
//Void entropy CD
setcdVEntropy = instance_create_depth(rCol, y + yy3, 0, obj_settings);
with (setcdVEntropy)
{
	userinput = global.talVEntropyCD;
	maxCharacters = 5;
	leftText = "" //leftText = "Void Entropy CD";
	rightText = "seconds";
}
yy3 += verticalspacing;
//Dark Void CD
setcdDV = instance_create_depth(rCol, y + yy3, 0, obj_settings);
with (setcdDV)
{
	userinput = global.talDarkVoidCD;
	maxCharacters = 5;
	leftText = "" //leftText = "Dark Void CD";
	rightText = "seconds";
}
yy3 += verticalspacing;
//HoS CD
setcdHoS = instance_create_depth(rCol, y + yy3, 0, obj_settings);
with (setcdHoS)
{
	userinput = global.talHoSCD;
	maxCharacters = 5;
	leftText = "" //leftText = "Hymn of Sorrow CD";
	rightText = "seconds";
}

/////////////
//FAR RIGHT//
/////////////

yy4 += verticalspacing;
yy4 += verticalspacing;
yy4 += verticalspacing;
yy4 += verticalspacing;
//call to the void proc chance
setCttVrppm = instance_create_depth(rCol2-100, y + yy4, 0, obj_settings);
with (setCttVrppm)
{
	userinput = global.CttVrppm;
	maxCharacters = 5;
	leftText = "RPPM";
	rightText = "Real Procs Per Minute (affected by haste)";
}
yy4 += verticalspacing;
yy4 += verticalspacing;
yy4 += verticalspacing/2;
//shared void cooldown during madness
setcdSharedVoid = instance_create_depth(rCol2-70, y + yy4, 0, obj_settings);
with (setcdSharedVoid)
{
	userinput = global.cdSharedVoid;
	maxCharacters = 5;
	leftText = "Shared CD";
	rightText = "GCDs - shared cooldown for Void Bolt and Void Eruption (during Madness)";
}
yy4 += verticalspacing/2;
yy4 += verticalspacing;
yy4 += verticalspacing;
//SWP Duration
setdurSWPain = instance_create_depth(rCol2-100, y + yy4, 0, obj_settings);
with (setdurSWPain)
{
	userinput = global.durSWPain;
	maxCharacters = 5;
	leftText = "Duration";
	rightText = "seconds";
}
yy4 += verticalspacing;
//VT Duration
setdurVT = instance_create_depth(rCol2-100, y + yy4, 0, obj_settings);
with (setdurVT)
{
	userinput = global.durVT;
	maxCharacters = 5;
	leftText = "Duration";
	rightText = "seconds";
}
yy4 += verticalspacing;
yy4 += verticalspacing;
//Void entropy Duration
setdurVEntropy = instance_create_depth(rCol2-100, y + yy4, 0, obj_settings);
with (setdurVEntropy)
{
	userinput = global.talVEntropyDur;
	maxCharacters = 5;
	leftText = "Duration";
	rightText = "seconds";
}