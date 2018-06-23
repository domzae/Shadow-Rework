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
	
if clipboard_has_text()
{
	ini_open_from_string(clipboard_get_text());
	scr_importsettings();
	
	recent = true;
	alarm[0] = 1;
	text = "Imported from clipboard!"
}
else
{
	text = "Clipboard empty"
	alarm[0] = 1;
}





if room == Settings
{
	instance_create_layer(0,0,"Instances",obj_setcreator);
}
else
{
	//instance_create_layer(0,64,"Instances",obj_talentcreator);
	room_restart();
}