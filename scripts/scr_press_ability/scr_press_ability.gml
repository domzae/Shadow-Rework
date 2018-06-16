if abilityName == "Surrender to Madness"
{
	if global.gcdLeft == 0 and cdLeft <= 0 and global.madness == false //check for GCD //check own CD
	{
	
		obj_gcd.alarm[0] = global.gcd;
	

		global.lastGCDinstant = true;
	
		image_index ++;
		alarm[0] = cd;

		global.surrender = true;
		global.surrenderStart = true;

	
	}
} 
//do nothing if void buttons are pressed while sane
else if isVoid == true and global.sanity == true 
{
}
//check GCD //check own CD
else if global.gcdLeft == 0 and cdLeft == 0
{
	
	//set gcd
	obj_gcd.alarm[0] = global.gcd;
	
	
	
	//INSTANT
	if castTime = 0 and channelTime = 0
	{
		scr_press_instant()
	}
	//CAST TIME
	else if castTime > 0
	{
		scr_press_cast()
	}
	//CHANNEL
	else
	{
		scr_press_channel()
	}
	
}
	