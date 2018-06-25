var file = file_text_open_write(working_directory + "keybinds.kb");

for (var i=0; i<13; i++;)
{
	file_text_write_string(file,string(global.keybindArr[i]));
	file_text_writeln(file)
}


file_text_close(file);

