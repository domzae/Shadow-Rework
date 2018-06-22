
var perc;
if global.sanity == false && global.madness == false
{
	if global.insanity <= global.talFocusedInsanityPeak
	{
		perc = (global.insanity-50)/(global.talFocusedInsanityPeak-50)
	}
	else if global.insanity > global.talFocusedInsanityPeak
	{
		perc = (100-global.insanity)/(100-global.talFocusedInsanityPeak)
	}
		dmgFocusedInsanity = perc*global.talFocusedInsanityDmg
		if dmgFocusedInsanity < 0
		{
			dmgFocusedInsanity = 0
		}
}
else
{
	dmgFocusedInsanity = 0
}
