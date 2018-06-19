//Default values here
//scr_loadsettings("filename.ini")


var file = file_text_open_read(working_directory + argument[0])
var exportstring = ""

while !file_text_eof(file)
{
	exportstring += file_text_readln(file) + "\n"
}

file_text_close(file);

return exportstring;