//start cd or gcd
if alarm_get(0) > 0 and cd > 0
{
	cdLeft = alarm[0]/room_speed;
}
else
{
	cdLeft = 0
}



//set binding
var k=keyboard_lastkey;
var c=keyboard_lastchar;

if (setbinding == true and (k > 47 and k < 91))
{
	keybind = keyboard_lastchar;
	setbinding = false;
}