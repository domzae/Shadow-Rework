//start cd or gcd
if alarm_get(0) > 0 and cd > 0
{
	cdLeft = alarm[0]/room_speed;
}
else
{
	cdLeft = global.gcdLeft;
}


if cdhasted > 0 //update cooldown for cooldowns that are defined by haste
{
	cd = cdhasted*global.gcd;
}


//set binding
var k=keyboard_lastkey;
var c=keyboard_lastchar;

if (setbinding == true and (k > 47 and k < 91))
{
	keybind = keyboard_lastchar;
	setbinding = false;
}

//pickup
if pickup == true
{
	mp_potential_step(mouse_x,mouse_y,1000,false)
}