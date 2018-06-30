with tal1
{
	if focus == true
	{
		global.talFotM = true
	}
	else
	{
		global.talFotM = false
	}
	global.talFotMins = real(talSetting.userinput);
}
with tal2
{
	if focus == true
	{
		global.talMindShatter = true
	}
	else
	{
		global.talMindShatter = false
	}
	global.talMindShatterCharges = real(talSetting.userinput);
}
with tal3
{
	if focus == true
	{
		global.talFocustheVoid = true
	}
	else
	{
		global.talFocustheVoid = false
	}
	global.talFocustheVoidCD = real(talSetting.userinput);
	global.talFocustheVoidDur = real(talSetting2.userinput);
}
/*with tal3
{
	if focus == true
	{
		global.talPainDischarge = true
	}
	else
	{
		global.talPainDischarge = false
	}
	global.talPainDischargeins = real(talSetting.userinput);
}*/
with tal4
{
	if focus == true
	{
		global.talBlackout = true
	}
	else
	{
		global.talBlackout = false
	}
	global.talBlackoutDotInc = real(talSetting.userinput);
}
with tal5
{
	if focus == true
	{
		global.talMisery = true
	}
	else
	{
		global.talMisery = false
	}
}
with tal6
{
	if focus == true
	{
		global.talDarkVoid = true
	}
	else
	{
		global.talDarkVoid = false
	}
	global.talDarkVoidins = real(talSetting.userinput);
	global.talDarkVoidCD = real(talSetting2.userinput);
}
with tal7
{
	if focus == true
	{
		global.talAttV = true
	}
	else
	{
		global.talAttV = false
	}
	global.talAttVCDR = real(talSetting.userinput);
}
with tal8
{
	if focus == true
	{
		global.talHoS = true
	}
	else
	{
		global.talHoS = false
	}
	global.talHoSpause = real(talSetting.userinput);
}
with tal9
{
	if focus == true
	{
		global.talVEntropy = true
	}
	else
	{
		global.talVEntropy = false
	}
	//global.talVEntropyCD = real(talSetting.userinput);
	global.talVEntropyCDR = real(talSetting.userinput);
}
with tal10
{
	if focus == true
	{
		global.talVoidlord = true
	}
	else
	{
		global.talVoidlord = false
	}
	global.talVoidlordDmg = real(talSetting.userinput);
	global.talVoidlordDur = real(talSetting2.userinput);
}
with tal11
{
	if focus == true
	{
		global.talFocusedInsanity = true
	}
	else
	{
		global.talFocusedInsanity = false
	}
	global.talFocusedInsanityDmg = real(talSetting.userinput);
	//global.talFocusedInsanityPeak = real(talSetting2.userinput);
}
with tal12
{
	if focus == true
	{
		global.talAllure = true
	}
	else
	{
		global.talAllure = false
	}
	global.talAllureDmg = real(talSetting.userinput);
	global.talAllureDur = real(talSetting2.userinput);
}