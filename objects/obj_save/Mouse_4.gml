instance_destroy(obj_setcreator); //workaround so this objects room end isn't called
	
scr_savesettings();

recent = true;
alarm[0] = 1;
text = "Settings saved!"

instance_create_layer(0,0,"Instances",obj_setcreator);

