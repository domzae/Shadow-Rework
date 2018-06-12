draw_set_font(fnt_insanity);
draw_set_color(c_white);
draw_set_halign(fa_middle);

//draw_text(x + 0, y + 0, string("GCD:") + string_format(global.gcdLeft,4,1));

if global.gcdLeft > 0
{
	draw_set_color(c_ltgray);
	draw_rectangle(x - 350,y -5,x + 350,y + 8,1);
	draw_set_color(c_red);
	draw_rectangle_color(x - 349,y -4 ,x - 349 + (global.gcd-global.gcdLeft*room_speed)/global.gcd*700,y + 7,c_maroon,c_maroon,c_red,c_red,0);

}
