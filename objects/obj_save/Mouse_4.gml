if room == Settings
{
	instance_destroy(obj_setcreator); //workaround so this objects room end isn't called
}
else
{
	instance_destroy(obj_talentcreator);
}


scr_savesettings();

recent = true;
alarm[0] = 1;
text = "Settings saved!"

if room == Settings
{
	instance_create_layer(0,0,"Instances",obj_setcreator);
}
else
{
	instance_create_layer(0,128,"Instances",obj_talentcreator);
}
