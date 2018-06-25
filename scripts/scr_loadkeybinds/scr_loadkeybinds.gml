var file = file_text_open_read(working_directory + "keybinds.kb");

for (var i=0; i<13; i++;)
{
	global.keybindArr[i] = string_char_at(file_text_read_string(file),1);
	file_text_readln(file);
}

file_text_close(file);


/*


ini_open(working_directory + "keybinds.ini")

global.basedrain = ini_read_real("General","Base Drain",room_speed/5);

global.kbMF = ini_read_string("Keybind","MF","1"); 
global.kbMB = ini_read_string("Keybind","MB","2"); 
global.kbVB = ini_read_string("Keybind","VB","3"); 
global.kbSWP = ini_read_string("Keybind","SWP","4"); 
global.kbMS = ini_read_string("Keybind","MS","!"); 
global.kbSWD = ini_read_string("Keybind","SWD","@"); 
global.kbVEr = ini_read_string("Keybind","VEr","#"); 
global.kbVT = ini_read_string("Keybind","VT","$"); 
global.kbDV = ini_read_string("Keybind","DV","q"); 
global.kbHoS = ini_read_string("Keybind","HoS","w"); 
global.kbS2M = ini_read_string("Keybind","S2M","e"); 
global.kbVEn = ini_read_string("Keybind","VEn","r");