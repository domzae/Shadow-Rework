if alarm[8] > 0
{
	draw_self();
	
	//mouseover 
	if focus == true
	{
		draw_sprite_stretched(spr_abilityover,0,x,y-sprite_height/2,66,66);
		draw_tooltip_mouse(tooltipText,400);
	}

	draw_set_font(fnt_basic);
	draw_set_valign(fa_center)
	draw_set_halign(fa_left)
	//duration overlay
	draw_set_alpha(0.5);
	draw_set_color(c_green);
	//draw_rectangle(x,y-33,x + (alarm[8]/(global.talVoidlordDur*room_speed)*sprite_width),y+33,0);
	
	draw_set_color(c_gray);
	draw_rectangle(x,y+33,x+66,y+33 - (alarm[8]/(global.talVoidlordDur*room_speed)*sprite_height),0);
	
	draw_set_alpha(1);
	draw_outline_text(x+5,y,c_black,c_yellow, string_format(alarm[8]/room_speed,3,1))
	
	//stacks
	//draw_outline_text(x+sprite_width+20,y,c_black,c_green, "+" + string(dmgVoidLord) + "%");
	draw_outline_text(x+sprite_width+10,y,c_black,c_green, string(stacks));
}



