if debuffLeft > 0
{
	draw_self()
	draw_set_valign(fa_middle)
	draw_set_font(fnt_basic)
	
	//border
	draw_border(c_red,0,0)
	
	draw_set_halign(fa_right)
	draw_outline_text(x-2, y+sprite_height/2,c_black,c_yellow, string_format(alarm[0]/room_speed,4,1));
	draw_set_halign(fa_left)
	draw_outline_text(x+sprite_width+2, y+sprite_height/2,c_black,c_red, string_format(debuffLeft,2,0));
	
	draw_set_valign(fa_top)
	if focus == true
	{
		draw_sprite_stretched(spr_abilityover,0,x,y,sprite_width,sprite_height);
		draw_tooltip_mouse(tooltipText,0);
	}
}