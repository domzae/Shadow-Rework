global.drain = global.basedrain

revdrain = false;

if global.talFocusedInsanity == true
{
	instance_create_depth(x,y,depth-10,obj_talFI)
}
if global.talAllure == true
{
	instance_create_depth(x,y+120,depth-9,obj_allure)
}

if global.talVoidlord == true
{
	instance_create_depth(obj_voidbolt.x-29,obj_voidbolt.y-88,-100,obj_voidLord)
}