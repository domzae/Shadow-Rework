if point_in_rectangle(mouse_x, mouse_y, x, y, x+spr_w, y+spr_h)
{
	mouseover = true;
}
else
{
	mouseover = false;
}

// deactivate if lose focus

if focus == false && wasfocus == true
{
	if instance_exists(talSetting)
	{
		instance_deactivate_object(talSetting)
	}
	wasfocus = false;
}

if focus == true & wasfocus == false
{
	wasfocus = true;
	
	//activate or create settings button
	if instance_exists(talSetting)
	{
		instance_activate_object(talSetting)
	}
	else if leftText != ""
	{
		talSetting = instance_create_depth(x+spr_w/2,y+spr_h+20,depth,obj_settings)
		with talSetting
		{
			var callingTal = instance_place(x-374/2,y-93-20,obj_talent)
			if callingTal != noone
			{
				userinput = callingTal.talSet
				leftText = callingTal.leftText
				rightText = callingTal.rightText
			}
		}
	}
}