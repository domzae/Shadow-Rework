//set values for cast bar draw

with obj_abilities
{
	if alarm[3] >= 0
	{
		global.castingTime += 700/(global.hastemultiplier*castTime);
	}
	if alarm[1] >= 0
	{
		global.channelingTime += 700/(global.hastemultiplier*channelTime);
	}
}