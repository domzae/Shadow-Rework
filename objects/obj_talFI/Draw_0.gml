//draw Focused Insanity
if global.madness == false
{
	//Bar triangle
	draw_set_alpha(0.15)
	var peak = 400*((global.talFocusedInsanityPeak-50)/50)
	draw_triangle_color(obj_insanity.x,obj_insanity.y+50,obj_insanity.x+peak,obj_insanity.y-50,obj_insanity.x+400,obj_insanity.y+50,c_white,c_red,c_white,0)
	draw_set_alpha(1)
	
	
	//Text
	if global.sanity == false
	{
		//border
		draw_border(c_green,0,0)
		
		draw_self()
		draw_set_halign(fa_left)
		draw_set_valign(fa_center)
		draw_set_font(fnt_insanity)
		draw_outline_text(x+10,y+sprite_height/2,c_black,c_yellow,string_format(dmgFocusedInsanity,2,0) + "%")
		draw_set_valign(fa_top)
		
		//mouseover
		if focus == true
		{
			draw_sprite(spr_abilityover,0,x+sprite_width/2,y+sprite_height/2);
			draw_tooltip_mouse(tooltipText,0);
		}
	}
}