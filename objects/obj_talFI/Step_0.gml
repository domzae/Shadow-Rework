if global.sanity == false && global.madness == false
{
	var i = global.insanity-50
	//Just play with these 4 values
	var a = global.talFocusedInsanityDmg //Amplitude
	var b = pi/50 //Compression
	var c = 0 //x-axis offset
	var d = 0 //y-axis offset
	var y1 = a*sin(b*i+c)+d
	dmgFocusedInsanity = y1
}
else
{
	dmgFocusedInsanity = 0
}

/*
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
