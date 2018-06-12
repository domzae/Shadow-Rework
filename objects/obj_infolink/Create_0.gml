text = "For a full breakdown of his concept, you can find his spreadsheet here";
link = "https://docs.google.com/spreadsheets/d/1TqUAxGz4gVQuge7eiJVQBmWXT74RsFxZxRsLtSOb6lc/edit#gid=0";
font = fnt_infolink;

draw_set_font(font);
var width = string_width(text);
var height = string_height(text);

var offset = 5;
left = x - offset;
top = y - offset;
right = left + width - 1 + offset;
bottom = top + height - 1 + offset;