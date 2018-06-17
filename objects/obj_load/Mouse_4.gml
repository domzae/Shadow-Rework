if room == Settings
{
	instance_destroy(obj_setcreator); //destroy to reload 
	instance_destroy(obj_settings); //destroy to reload 
}
else
{
	instance_destroy(obj_talentcreator);
	instance_destroy(obj_talent);
}
	
if file_exists(working_directory + "settings.ini")
{
	scr_loadsettings("settings.ini");
	recent = true;
	alarm[0] = 1;
	text = "Loaded!"
}
else
{
	text = "No file found! Save one first."
	alarm[0] = 1;
}

if room == Settings
{
	instance_create_layer(0,0,"Instances",obj_setcreator);
}
else
{
	//instance_create_layer(0,128,"Instances",obj_talentcreator);
	room_restart();
}