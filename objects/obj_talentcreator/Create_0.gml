spr_w = 374
spr_h = 93

x = room_width/2 - spr_w*3/2


col1 = x
col2 = x + spr_w
col3 = x + spr_w*2

row1 = y
row2 = y + 200
row3 = y + 400

/////////
//ROW 1//
/////////
tal1 = instance_create_depth(col1,row1,-9,obj_talent)
with tal1
{
	image_index = 1;
	talentName = "Fortress of the Mind"
	talentText = "Passively generate insanity up to " + string(global.talFotMins) + " instead of losing it"
	leftText = "Insanity equillibrium"
	rightText = "Generate up to this much insanity"
	focus = global.talFotM
	talSet = global.talFotMins;
	row = 1
}

tal2 = instance_create_depth(col2,row1,-8,obj_talent)
with tal2
{
	image_index = 2;
	talentName = "Mind Shatter"
	talentText = "(not yet implemented)"
	leftText = "Max Charges"
	rightText = "Mind Blast"
	focus = global.talMindShatter
	talSet = global.talMindShatterCharges;
	row = 1
}

tal3 = instance_create_depth(col3,row1,-7,obj_talent)
with tal3
{
	image_index = 3;
	talentName = "Talent 3"
	talentText = "(not yet implemented)"
	leftText = ""
	rightText = ""
	talSet = 0;
	row = 1
}
/////////
//ROW 2//
/////////
tal4 = instance_create_depth(col1,row2,-6,obj_talent)
with tal4
{
	image_index = 4;
	talentName = "Blackout"
	talentText = "(not yet implemented)"
	leftText = "Dot duration increase"
	rightText = "seconds"
	focus = global.talBlackout
	talSet = global.talBlackoutDotInc;
	row = 2
}

tal5 = instance_create_depth(col2,row2,-5,obj_talent)
with tal5
{
	image_index = 5;
	talentName = "Misery"
	talentText = "Vampiric Touch also applies Shadow Word: Pain"
	leftText = ""
	rightText = ""
	focus = global.talMisery
	talSet = 0;
	row = 2
}

tal6 = instance_create_depth(col3,row2,-4,obj_talent)
with tal6
{
	image_index = 6;
	talentName = "Dark Void"
	talentText = "(not yet implemented)"
	leftText = "Insanity generated"
	rightText = "per target"
	focus = global.talDarkVoid
	talSet = global.talDarkVoidins;
	row = 2
}
/////////
//ROW 3//
/////////
tal7 = instance_create_depth(col1,row3,-3,obj_talent)
with tal7
{
	image_index = 7;
	talentName = "Attuned to the Void"
	talentText = "For each second spent in Voidform, reduce the remaining cooldown on Surrender to Madness by " + string(global.talAttVCDR) + " seconds"
	leftText = "Cooldown reduction"
	rightText = "per second"
	focus = global.talAttV
	talSet = global.talAttVCDR;
	row = 3
}

tal8 = instance_create_depth(col2,row3,-2,obj_talent)
with tal8
{
	image_index = 8;
	talentName = "Hymn of Sorrow"
	talentText = "(not yet implemented)"
	leftText = "Insanity generated"
	rightText = "over its duration"
	focus = global.talHoS
	talSet = global.talHoSins;
	row = 3
}

tal9 = instance_create_depth(col3,row3,-1,obj_talent)
with tal9
{
	image_index = 9;
	talentName = "Void Entropy"
	talentText = "(not yet implemented)"
	leftText = "Cooldown"
	rightText = ""
	focus = global.talVEntropy
	talSet = global.talVEntropyCD;
	row = 3
}