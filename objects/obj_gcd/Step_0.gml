global.gcd = (room_speed*1.5)/(global.haste/100 + 1); //update gcd to current haste
global.hastemultiplier = (room_speed*1.5)/(global.haste/100 + 1);

//for abilities to check if gcd is active
if alarm_get(0) > 0
{
	global.gcdLeft = alarm[0]/room_speed;
}
else
{
	global.gcdLeft = 0;
}


global.gcd = max(global.gcd,room_speed/2)