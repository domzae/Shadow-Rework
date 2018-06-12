

draw_set_font(fnt_basic);
draw_set_halign(fa_right);
if global.casting==true
{
	draw_set_color(c_white);
	draw_rectangle(x - 350,y -25,x + 350,y + 25,3);

	draw_set_color(c_teal);
	draw_rectangle_color(x - 349,y -24 ,x - 349 + global.castingTime,y + 24,c_teal,c_teal,c_navy,c_navy,0);
	
	with obj_abilities //draw ability name
	{
		if alarm[3] > 0
		{
			draw_set_halign(fa_left);
			draw_outline_text(obj_castBar.x-345,obj_castBar.y-15,c_black,c_white,abilityName);
		}
	}
	draw_set_halign(fa_right);
	draw_outline_text(x + 345, y - 16,c_black,c_white, string_format(global.castingTime/800*global.hastemultiplier/room_speed,4,1));
}

if global.channeling==true and global.casting==false
{
	draw_set_color(c_white);
	draw_rectangle(x - 350,y -25,x + 350,y + 25,3);

	draw_set_color(c_olive);
	draw_rectangle_color(x - 349,y -24 ,x + 349 - global.channelingTime,y + 24,c_teal,c_teal,c_navy,c_navy,0);
	
	draw_set_alpha(0.6)
	draw_line_width_color(x-175,y-24,x-175,y+24,3,c_red,c_red);
	draw_line_width_color(x,y-24,x,y+24,3,c_red,c_red);
	draw_line_width_color(x+175,y-24,x+175,y+24,3,c_red,c_red);
	draw_set_alpha(1)
	
	with obj_abilities
	{
		if alarm[1] > 0
		{
			draw_set_halign(fa_left);
			draw_outline_text(obj_castBar.x-345,obj_castBar.y-15,c_black,c_white,abilityName);
		}
	}
	draw_set_halign(fa_right);	
	draw_outline_text(x + 345, y - 16,c_black,c_white, string_format(global.hastemultiplier/room_speed*2 - global.channelingTime/350*global.hastemultiplier/room_speed,4,1));
}