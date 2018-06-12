//set global variables initially, which can be altered in settings room
//if you change the starting values for globals, copy them to obj_restart
if !variable_global_exists("drain")
{
	scr_setglobvars();
}


madnessTimeLeft = 0;
madnessStart = true;
global.surrenderStart = true;

//begin drain
alarm_set(0, 1);


//cursor_sprite = spr_cursor;
//window_set_cursor(cr_none);

