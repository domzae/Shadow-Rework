instance_destroy(obj_setcreator); //destroy to reload 
instance_destroy(obj_settings); //destroy to reload 
	
if file_exists(working_directory + "settings.ini")
{
	scr_loadsettings();
	recent = true;
	alarm[0] = 1;
	text = "Loaded!"
}
else
{
	text = "No file found! Save one first."
	alarm[0] = 1;
}

var debug = global.insgainMindFlay;
instance_create_layer(0,0,"Instances",obj_setcreator);
var debug2 = global.insgainMindFlay;
