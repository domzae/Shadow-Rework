draw_set_color(c_white)
draw_set_font(fnt_settings)
draw_set_halign(fa_right)
draw_set_valign(fa_top);
//draw_outline_text(x, y, outline color, string color, string)  
draw_outline_text(x-200,y,c_black,c_white,"Damage Done:")
draw_outline_text(x-200,y+40,c_black,c_white,"DPS:")




if totalDamage < 100000
{
draw_outline_text(x,y,c_black,c_white,string_thousands_scripts(totalDamage))
}
else
{
	draw_outline_text(x,y,c_black,c_white,string_abbrev_real(totalDamage,2))
}

if totalDPS < 100000
{
	draw_outline_text(x,y+40,c_black,c_white,string_thousands_scripts(totalDPS))
}
else
{
	draw_outline_text(x,y+40,c_black,c_white,string_abbrev_real(totalDPS,2))
}

