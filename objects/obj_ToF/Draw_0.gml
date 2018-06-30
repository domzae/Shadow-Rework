if global.dmgON == true
{
	draw_self()
	draw_set_valign(fa_center)
	draw_set_halign(fa_left)
	draw_set_font(fnt_medium)
	
	//border
	draw_border(c_green,0,0)
	
	draw_outline_text(x+70, y+sprite_height/2,c_black,c_green, string_format(currentToF,4,1) + "%");
	
	if focus == true
	{
		draw_sprite_stretched(spr_abilityover,0,x,y,sprite_width,sprite_height);
		draw_tooltip_mouse(tooltipText,0);
	}
}

