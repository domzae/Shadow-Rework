/// @description
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//unuseable ovelay
if global.madness == true
{
	draw_set_alpha(0.5);
	draw_set_color(c_red);
	draw_rectangle(x-56,y+56,x+56,y-56,0);
	draw_set_alpha(1);
}

draw_outline_text(x-8, y+ 50,c_black,c_yellow, string_format(cdLeft,3,1));