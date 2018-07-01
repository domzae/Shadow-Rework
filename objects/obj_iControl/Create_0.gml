x = room_width/2
io_clear();
//set global variables initially, which can be altered in settings room
if !variable_global_exists("drain")
{
	//insanity state
	global.sanity = true;
	global.madness = false;
	global.surrender = false;
	
	//set default settings
	ini_open(working_directory + "default.ini")
	scr_loadsettings("default.ini");
	
	//start initialize keybind array
	global.keybindArr = array_create(13, noone)
	if file_exists(working_directory + "keybinds.kb")
	{
		scr_loadkeybinds();
	}
	else
	{
		scr_defaultkeybinds();
	}
}


madnessTimeLeft = 0;
madnessStart = true;
global.surrenderStart = true;
global.drainPause = false;
drainWasPause = false;

//begin drain
alarm_set(0, 1);


//cursor_sprite = spr_cursor;
//window_set_cursor(cr_none);

