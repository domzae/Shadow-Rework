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
else if goto == 3
{
	var text = "Talents"
}
else if goto == 4
{
	var text = "Abilities"
}

draw_self();
draw_set_font(fnt_settings);
draw_set_halign(fa_middle);
draw_set_valign(fa_center)

draw_outline_text(x,y,c_black,c_white,text);