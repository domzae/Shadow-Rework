/// @description
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//unuseable ovelay
if global.madness == true
{
	draw_set_alpha(0.5);
	draw_set_color(c_red);
	draw_rectangle(x-53,y+62,x+59,y-50,0);
	draw_set_alpha(1);
}

