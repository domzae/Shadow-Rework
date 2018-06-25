global.insanity = clamp(global.insanity,0,100);

if global.talFocustheVoid == true
{
	if obj_focusthevoid.alarm[4] >= 0 and global.madness == false
	{
		global.insanity = clamp(global.insanity,51,99);
	}
}