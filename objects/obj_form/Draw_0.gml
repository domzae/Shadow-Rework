draw_set_valign(fa_middle)
draw_set_halign(fa_center)
draw_set_font(fnt_insanity)

if obj_iControl.alarm[1] > -1
{
	image_index = 1
	draw_self()
	
	//border
	draw_border(c_red,-sprite_width/2,-sprite_height/2)
	
	draw_outline_text(x+90, y+2,c_black,c_red, string_format(obj_iControl.alarm[1]/room_speed,4,1));
	
	draw_set_valign(fa_top)
	if focus == true
	{
		draw_sprite_stretched(spr_abilityover,0,x-sprite_width/2,y-sprite_height/2,sprite_width,sprite_height);
		draw_tooltip_mouse(tooltipText,0);
	}
}
else if global.sanity == false
{
	image_index = 0
	draw_self();
	draw_border(c_purple,-sprite_width/2,-sprite_height/2)
	
	draw_set_valign(fa_top)
	if focus == true
	{
		draw_sprite_stretched(spr_abilityover,0,x-sprite_width/2,y-sprite_height/2,sprite_width,sprite_height);
		draw_tooltip_mouse(tooltipText,0);
	}
}