text = "Get the latest version here";
link = "https://github.com/domzae/Shadow-Rework";
font = fnt_infolink;

draw_set_font(font);
var width = string_width(text);
var height = string_height(text);

var offset = 5;
left = x - offset;
top = y - offset;
right = left + width - 1 + offset;
bottom = top + height - 1 + offset;