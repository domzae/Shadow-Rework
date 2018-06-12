if goto == 0
{
	var text = "Play"
}
else if goto == 1
{
	var text = "Settings"
}
else if goto == 2
{
	var text = "Info"
}

draw_self();
draw_set_font(fnt_settings);
draw_set_halign(fa_middle);

draw_outline_text(x,y-15,c_black,c_white,text);