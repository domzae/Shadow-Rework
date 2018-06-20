/// @description create settings
talSetting = instance_create_depth(x+spr_w/3*2,y+spr_h+20,depth,obj_settings)
with talSetting
{
	var callingTal = instance_place(x-374/3*2,y-93-20,obj_talent)
	if callingTal != noone
	{
		userinput = callingTal.talSet
		leftText = callingTal.leftText
		rightText = callingTal.rightText
	}
}

talSetting2 = instance_create_depth(x+spr_w/3*2,y+(spr_h)*2,depth,obj_settings)
with talSetting2
{
	var callingTal = instance_place(x-374/3*2,y-186,obj_talent)
	if callingTal != noone
	{
		userinput = callingTal.talSet2
		leftText = callingTal.leftText2
		rightText = callingTal.rightText2
	}
}

if focus == true
{
	if leftText == ""
	{
		instance_deactivate_object(talSetting)
	}
	if leftText2 == ""
	{
		instance_deactivate_object(talSetting2)
	}
}