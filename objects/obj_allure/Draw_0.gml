//draw Focused Insanity
if global.talAllure == true
{
	draw_self()
	draw_set_halign(fa_left)
	draw_set_valign(fa_center)
	draw_set_font(fnt_medium)
	
	//draw timer
	draw_set_alpha(0.5)
	draw_set_color(c_gray);
	//draw_rectangle(x,y+112,x+112,y+112 - (alarm[0]/(global.talAllureDur*room_speed)*sprite_height),0);
	draw_set_alpha(1)
	//border
	draw_border(c_green,0,0)
	
	//draw_outline_text(x+10,y+sprite_height/2,c_black,c_yellow,string_format(alarm[0]/room_speed,3,1) + "%")
	
	if global.madness == true
	{
		draw_outline_text(x+2,y+sprite_height/2,c_black,c_yellow,string_format(dmgAllure,2,0) + "%")
	}
	else if global.sanity == true
	{
		draw_outline_text(x+2,y+sprite_height/2,c_black,c_green,string_format(dmgAllure,2,0) + "%")
	}
	else
	{
		draw_outline_text(x+2,y+sprite_height/2,c_black,c_red,string_format(dmgAllure,2,0) + "%")
	}
		
	//mouseover
	if focus == true
	{
		draw_sprite_stretched(spr_abilityover,0,x,y,sprite_width,sprite_height);
		draw_tooltip_mouse(tooltipText,0);
	}
	
}

