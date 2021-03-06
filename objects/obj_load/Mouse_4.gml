if room == Settings
{
	instance_destroy(obj_setcreator); //destroy to reload 
	instance_destroy(obj_settings); //destroy to reload 
}
else if room == Talents
{
	instance_destroy(obj_talentcreator);
	instance_destroy(obj_talent);
}
else if room == SettingsDmg
{
	instance_destroy(obj_dmgcreator); //destroy to reload 
	instance_destroy(obj_settings); //destroy to reload 
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
else if room == Talents
{
	//instance_create_layer(0,64,"Instances",obj_talentcreator);
	room_restart();
}
else if room == SettingsDmg
{
	instance_create_layer(0,0,"Instances",obj_dmgcreator);
}