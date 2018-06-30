global.drain = global.basedrain

revdrain = false;

if global.talFocusedInsanity == true
{
	instance_create_depth(x,y,depth-1,obj_talFI)
}
if global.talAllure == true
{
	if global.talFocusedInsanity == true
	{
		instance_create_depth(x-96,y,depth-1,obj_allure)
	}
	else
	{
		instance_create_depth(x,y,depth-1,obj_allure)
	}
}

if global.talVoidlord == true
{
	instance_create_depth(obj_voidbolt.x-29,obj_voidbolt.y-88,-100,obj_voidLord)
}