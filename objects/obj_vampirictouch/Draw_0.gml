/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//draw dot time
if global.enemyFocus.VTApplied == true
{
	image_index = 1
	draw_set_font(fnt_insanity);
	draw_set_halign(fa_middle);
	draw_outline_text(x,y-25,c_black,c_green,string_format(global.enemyFocus.alarm[1]/room_speed,3,1));
	draw_set_colour(c_lime);
	draw_rectangle(x-57,y+57,x+57,y-57,1);
}
else
{
	image_index = 0
}