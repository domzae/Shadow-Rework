if debuffLeft > 0
{
	draw_self()
	draw_set_valign(fa_middle)
	draw_set_halign(fa_center)
	draw_set_font(fnt_insanity)
	draw_outline_text(x+56, y+56,c_black,c_red, string_format(debuffLeft,4,1));
	
	draw_set_valign(fa_top)
	if focus == true
	{
		draw_sprite(spr_abilityover,0,x+sprite_width/2-1,y+sprite_height/2-2);
		draw_tooltip_mouse(tooltipText,0);
	}
}

