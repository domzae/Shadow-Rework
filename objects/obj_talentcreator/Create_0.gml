spr_w = 374
spr_h = 93

x = room_width/2 - spr_w*3/2


col1 = x
col2 = x + spr_w
col3 = x + spr_w*2

row1 = y
row2 = y + 250
row3 = y + 500

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
	talentText = "Mind Blast now has " + string(global.talMindShatterCharges) + " charges" 
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
	talentName = "Pain Discharge"
	talentText = "When Shadow Word: Pain expires, generate " + string(global.talPainDischargeins) + " insanity"
	leftText = "Insanity"
	rightText = ""
	focus = global.talPainDischarge
	talSet = global.talPainDischargeins;
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
	talentText = "Mind Blast increases the remaining time on Shadow Word: Pain and Vampiric Touch by " + string(global.talBlackoutDotInc) + " seconds"
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
	talentText = "Unleash an explosion of dark energy, applying Shadow Word: Pain to each target hit. Generates " + string(global.talDarkVoidins) + " insanity per target hit. (number of targets set by Mind Sear settings)"
	leftText = "Insanity generated"
	rightText = "per target"
	focus = global.talDarkVoid
	talSet = global.talDarkVoidins;
	row = 2
	//second setting
	leftText2 = "Cooldown"
	rightText2 = "seconds"
	talSet2 = global.talDarkVoidCD;
}
/////////
//ROW 3//
/////////
tal7 = instance_create_depth(col1,row3,-3,obj_talent)
with tal7
{
	image_index = 7;
	talentName = "Attuned to the Void"
	talentText = "For every " + string(global.talAttVInterval) + " second spent in Voidform, reduce the remaining cooldown on Surrender to Madness by " + string(global.talAttVCDR) + " seconds"
	leftText = "Cooldown reduction"
	rightText = "per interval"
	focus = global.talAttV
	talSet = global.talAttVCDR;
	row = 3
	//second setting
	leftText2 = "Interval"
	rightText2 = "seconds in Voidform to apply CDR"
	talSet2 = global.talAttVInterval;
}

tal8 = instance_create_depth(col2,row3,-2,obj_talent)
with tal8
{
	image_index = 8;
	talentName = "Hymn of Sorrow"
	talentText = "Channels over 4 seconds, generates " + string(global.talHoSins) + " insanity"
	leftText = "Insanity generated"
	rightText = "over its duration"
	focus = global.talHoS
	talSet = global.talHoSins;
	row = 3
	//second setting
	/*leftText2 = "Pause passive drain"
	rightText2 = "1 = pause\n0 = continue"
	talSet2 = real(global.talHoSpause);*/
	leftText2 = "Cooldown"
	rightText2 = "seconds"
	talSet2 = real(global.talHoSCD);
}

tal9 = instance_create_depth(col3,row3,-1,obj_talent)
with tal9
{
	image_index = 9;
	talentName = "Void Entropy"
	talentText = "Applies a DoT for 12s, Void Bolt reduces the remaining cooldown by " + string(global.talVEntropyCDR) + " seconds"
	leftText = "Cooldown"
	rightText = "seconds"
	focus = global.talVEntropy
	talSet = global.talVEntropyCD;
	row = 3
	//second setting
	leftText2 = "CDR per bolt"
	rightText2 = "seconds"
	talSet2 = global.talVEntropyCDR
}