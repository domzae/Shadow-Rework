event_inherited();

//unuseable ovelay
if global.enemyFocus.currentPerc > 20
{
	draw_set_alpha(0.8);
	draw_set_color(c_black);
	draw_rectangle(x-56,y+56,x+56,y-56,0);
	draw_set_alpha(1);
}
else
if global.enemyFocus.currentPerc <= 20
{
	draw_set_color(c_lime);
	draw_rectangle(x-57,y+57,x+57,y-57,1);
	draw_rectangle(x-56,y+56,x+56,y-56,1);
	draw_rectangle(x-55,y+55,x+55,y-55,1);
	draw_set_alpha(1);
}