spr_w = 374
spr_h = 93

x = room_width/2 - spr_w*3/2


col1 = x
col2 = x + spr_w
col3 = x + spr_w*2

row1 = y
row2 = y + 250
row3 = y + 500
row4 = y + 750

/////////
//ROW 1//
/////////
tal1 = instance_create_depth(col1,row1,-9,obj_talent)
with tal1
{
	image_index = 1;
	talentName = "Fortress of the Mind"
	talentText = "[Passive]\nGenerate insanity up to " + string(global.talFotMins) + " instead of losing it"
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
	talentText = "[Passive]\nMind Blast now has " + string(global.talMindShatterCharges) + " charges" 
	leftText = "Max Charges"
	rightText = ""
	focus = global.talMindShatter
	talSet = global.talMindShatterCharges;
	row = 1
}
tal3 = instance_create_depth(col3,row1,-7,obj_talent)
with tal3
{
	image_index = 3;
	talentName = "Focus the Void"
	talentText = "Focus intently into the void, for "+ string(global.talFocustheVoidDur) +" seconds you will be unable to exit Voidform. Requires Voidform"
	leftText = "Cooldown"
	rightText = "seconds"
	focus = global.talFocustheVoid
	talSet = global.talFocustheVoidCD;
	row = 1
	//second setting
	leftText2 = "Duration"
	rightText2 = "seconds"
	talSet2 = global.talFocustheVoidDur;
}
/* OLD
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
}*/
/////////
//ROW 2//
/////////
tal4 = instance_create_depth(col1,row2,-6,obj_talent)
with tal4
{
	image_index = 4;
	talentName = "Blackout"
	talentText = "[Passive]\nMind Blast increases the remaining time on Shadow Word: Pain and Vampiric Touch by " + string(global.talBlackoutDotInc) + " seconds"
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
	talentText = "[Passive]\nVampiric Touch also applies Shadow Word: Pain"
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
	talentText = "Unleash an explosion of dark energy, applying Shadow Word: Pain to each target hit. Generates " + string(global.talDarkVoidins) + " insanity per target hit."
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
tal10 = instance_create_depth(col1,row3,-3,obj_talent)
with tal10
{
	image_index = 10;
	talentName = "Voidlord"
	talentText = "[Passive]\nVoid Bolt increases the damage of Void Bolt by x% for y"+/* string(global.talVoidlordDur) +*/" seconds. Additional stacks do not refresh the duration."
	leftText = "Damage increase"
	rightText = "per stack"
	focus = global.talVoidlord
	talSet = global.talVoidlordDmg;
	row = 4
	//second setting
	leftText2 = "Duration"
	rightText2 = "seconds"
	talSet2 = global.talVoidlordDur;
}

tal11 = instance_create_depth(col2,row3,-2,obj_talent)
with tal11
{
	image_index = 11;
	talentName = "Focused Insanity"
	talentText = "[Passive]\nWhile in Voidform your damage is increased up to x% based on how close to 75 insanity you are."
	leftText = "Max damage increase"
	rightText = "percent"
	focus = global.talFocusedInsanity
	talSet = global.talFocusedInsanityDmg;
	row = 4
	//leftText2 = "Peak insanity"
	//rightText2 = ""
	//talSet2 = real(global.talFocusedInsanityPeak);
}

tal12 = instance_create_depth(col3,row3,-1,obj_talent)
with tal12
{
	image_index = 12;
	talentName = "Allure of the Void"
	talentText = "[Passive]\nYour Madness has x% increased damage, reduced for each second spent in Voidform. This bonus is replenished while sane."
	leftText = "Max damage increase"
	rightText = "percent"
	focus = global.talAllure
	talSet = global.talAllureDmg;
	row = 4
	//second setting
	leftText2 = "Decay duration"
	rightText2 = "seconds"
	talSet2 = global.talAllureDur
}
/////////
//ROW 4//
/////////
tal7 = instance_create_depth(col1,row4,-3,obj_talent)
with tal7
{
	image_index = 7;
	talentName = "Attuned to the Void"
	talentText = "[Passive]\nFor every " + string(global.talAttVInterval) + " second spent in Voidform, reduce the remaining cooldown on Surrender to Madness by " + string(global.talAttVCDR) + " seconds"
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

tal8 = instance_create_depth(col2,row4,-2,obj_talent)
with tal8
{
	image_index = 8;
	talentName = "Hymn of Sorrow"
	talentText = "Channels over 4 seconds, generates " + string(global.talHoSins) + " insanity"
	//leftText = "Insanity generated"
	//rightText = "over its duration"
	focus = global.talHoS
	//talSet = global.talHoSins;
	row = 3
	leftText = "Pause passive drain"
	rightText = "1 = pause\n0 = continue"
	talSet = real(global.talHoSpause);
}

tal9 = instance_create_depth(col3,row4,-1,obj_talent)
with tal9
{
	image_index = 9;
	talentName = "Void Entropy"
	talentText = "Applies a DoT for 12s, Void Bolt reduces the remaining cooldown by " + string(global.talVEntropyCDR) + " seconds"
	//leftText = "Cooldown"
	//rightText = "seconds"
	focus = global.talVEntropy
	//talSet = global.talVEntropyCD;
	row = 3
	//second setting
	leftText = "CDR per bolt"
	rightText = "seconds"
	talSet = global.talVEntropyCDR
}
