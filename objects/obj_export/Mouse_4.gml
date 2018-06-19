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
	
scr_savesettings("temp.ini");
var expstr = scr_exportsettings("temp.ini");
clipboard_set_text(expstr)

recent = true;
alarm[0] = 1;
text = "Copied to clipboard"


if room == Settings
{
	instance_create_layer(0,0,"Instances",obj_setcreator);
}
else
{
	//instance_create_layer(0,128,"Instances",obj_talentcreator);
	room_restart();
}