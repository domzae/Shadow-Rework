var prefix = "";

//draw insanity bar
if global.madness == true
{
	draw_healthbar(obj_insanity.x-400, obj_insanity.y+50, obj_insanity.x+400, obj_insanity.y-50, global.insanity, $FFFFFFFF & $FFFFFF, $FFFFFFFF & $FFFFFF, $FF00004E & $FFFFFF, 0, (($FFFFFFFF>>24) != 0), (($FF0000FF>>24) != 0));
	draw_set_alpha(0.8)
	draw_rectangle_color(obj_insanity.x-400, obj_insanity.y+50, obj_insanity.x-400 + 800, obj_insanity.y-50, c_red,c_red,c_maroon,c_maroon,0);
	draw_set_alpha(1)
}
else
{
	draw_healthbar(obj_insanity.x-400, obj_insanity.y+50, obj_insanity.x+400, obj_insanity.y-50, global.insanity, $FFFFFFFF & $FFFFFF, $FFFFFFFF & $FFFFFF, $FF8E004E & $FFFFFF, 0, (($FFFFFFFF>>24) != 0), (($FF0000FF>>24) != 0));
	draw_line_color(obj_insanity.x,obj_insanity.y+50,obj_insanity.x,obj_insanity.y-50,c_purple,c_fuchsia);
	
	with obj_abilities
	{
			if insanityGain >= 0
			{
				var prefix = "+";
			}
			else
			{
				var prefix = "";
			}
		draw_set_font(fnt_basic);
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		draw_set_color(c_purple);
		draw_set_alpha(0.3);
		if alarm[3] > 0  //draw casting gain
		{
			draw_rectangle(obj_insanity.x-400+global.insanity/100*800, obj_insanity.y+50, obj_insanity.x-400+(global.insanity+insanityGain)/100*800, obj_insanity.y-50,0);
			//draw_text_color(obj_insanity.x-400+(global.insanity)/100*800,obj_insanity.y+20,prefix+string(insanityGain),c_maroon,c_maroon,c_fuchsia,c_fuchsia,1);
		}
		else if alarm[2] > 0 //draw channeling tick gain
		{
			draw_rectangle(obj_insanity.x-400+global.insanity/100*800, obj_insanity.y+50, obj_insanity.x-400+(global.insanity+insanityGain/4)/100*800, obj_insanity.y-50,0);
			//draw_text_color(obj_insanity.x-400+(global.insanity)/100*800,obj_insanity.y+20,prefix+string(insanityGain/4),c_maroon,c_maroon,c_fuchsia,c_fuchsia,1);
		}
		else if focus == true  //draw mouseover insanity gain
		{	
			draw_set_color(c_lime);
			if global.insanity+insanityGain >= 100
			{
				draw_set_color(c_red);
			}
			draw_set_alpha(0.3);
			draw_rectangle(obj_insanity.x-400+global.insanity/100*800, obj_insanity.y+50, obj_insanity.x-400+(global.insanity+insanityGain)/100*800, obj_insanity.y-50,0);
		}
		
		if focus == true //draw mouseover insanity gain text
		{
			draw_text_color(obj_insanity.x-400+(global.insanity)/100*800,obj_insanity.y-50,prefix+string(insanityGain),c_green,c_green,c_lime,c_lime,0.7);
		}
		draw_set_alpha(1);
	}
}

draw_set_font(fnt_insanity);
draw_set_halign(fa_middle);

//draw sanity | voidform | madness text
/*if global.sanity = true
{
	draw_outline_text(x,y,c_black,c_white,"Sane");
}
else if global.madness = true
{
	draw_outline_text(x,y,c_black,c_red,"Madness: " + string_format(madnessTimeLeft/room_speed,4,1));
}
else
{
	draw_outline_text(x,y,c_black,c_purple,"Voidform");
}