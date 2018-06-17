if instance_exists(talSetting)
{
	with talSetting
	{
		var callingTal = instance_place(x-374/2,y-93-20,obj_talent)
		if callingTal != noone
		{
			callingTal.talSet = userinput
		}
	}
}
	