var file = file_text_open_read(working_directory + "keybinds.kb");

with obj_abilities
{
	keybind = file_text_read_string(file);
	file_text_readln(file);
}

file_text_close(file);