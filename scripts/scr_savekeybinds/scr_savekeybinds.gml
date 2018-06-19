var file = file_text_open_write(working_directory + "keybinds.kb");

with obj_abilities
{
	file_text_write_string(file,string(keybind));
	file_text_writeln(file)
}

file_text_close(file);

