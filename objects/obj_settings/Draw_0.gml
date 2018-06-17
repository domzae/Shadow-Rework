var xx = x;
var yy = y;

draw_self()
draw_set_font(fnt_settings);
draw_set_halign(fa_right)
draw_set_valign(fa_top)

//left text
if focus == true
{
	draw_outline_text(x-4, y+6,c_purple,c_white, string(leftText)); //left text
}
else
{
	draw_outline_text(x-4, y+6,c_black,c_white, string(leftText));//left text
}

//center text
draw_set_halign(fa_center)
if userinput == ""
{
	draw_outline_text(x+sprite_width/2, y+6,c_white,c_black, cursor);
}
if real(userinput) mod 1 == 0
{
	draw_outline_text(x+sprite_width/2, y+6,c_white,c_black, string(userinput));
}
else
{
	draw_outline_text(x+sprite_width/2, y+6,c_white,c_black, string_format(userinput,5,1));
}


//right text mouseover
if mouseover == true
{
	draw_tooltip_mouse(rightText,400);
}

	draw_set_halign(fa_right);
	draw_set_font(fnt_settings);;	
	
	
