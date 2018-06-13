instance_destroy(obj_setcreator); //destroy to reload 
instance_destroy(obj_settings); //destroy to reload 

scr_loadsettings("default.ini");
recent = true;
alarm [0] = 1;
text = "All values reset!"

instance_create_layer(0,0,"Instances",obj_setcreator);