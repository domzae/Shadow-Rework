x = room_width/2

//set global variables initially, which can be altered in settings room
if !variable_global_exists("drain")
{
	//insanity state
	global.sanity = true;
	global.madness = false;
	global.surrender = false;
	
	//if !file_exists(working_directory + "settings.ini")
	//{
		ini_open(working_directory + "settings.ini")
		scr_loadsettings("settings.ini");
	//}
	//else
	//{
	//	scr_setglobvars();
	//}
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

