/// @description create settings
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