if alarm[8] > 0
{
	draw_self();
	
	//mouseover 
	if focus == true
	{
		draw_sprite_stretched(spr_abilityover,0,x-28,y-28,56,56);
		draw_tooltip_mouse(tooltipText,400);
	}

	//duration overlay
	draw_set_alpha(0.5);
	draw_set_color(c_green);
	draw_rectangle(x-28,y-28,x-28 + (alarm[8]/(6*room_speed)*sprite_width),y+28,0);
	draw_set_alpha(1);
}



//insanity tick pulse

if ticks > 0
{
	draw_set_font(fnt_basic);
	draw_set_alpha(alarm[7]/room_speed)
	draw_outline_text(x+68,y-18,c_green,c_green, "+" + string_format(global.insgainCttV/4,3,1));
	draw_set_alpha(1)
}