draw_set_color(c_white)
draw_set_font(fnt_insanity)
draw_set_halign(fa_right)
draw_set_valign(fa_top);
//draw_outline_text(x, y, outline color, string color, string)  
draw_outline_text(x-200,y,c_black,c_white,"Haste:")
draw_outline_text(x-200,y+50,c_black,c_white,"GCD:")
draw_outline_text(x-200,y+100,c_black,c_white,"Drain:")

//draw haste
draw_outline_text(x,y,c_black,c_white,string_format(global.haste,4,1) + "%")
//draw +haste
if global.haste > global.basehaste
{
	draw_set_halign(fa_left)
	draw_outline_text(x,y,c_black,c_lime, "+" + string_format(global.haste-global.basehaste,3,1) + "%")
	draw_set_halign(fa_right)
}
//draw -haste
if global.haste < global.basehaste
{
	draw_set_halign(fa_left)
	draw_outline_text(x,y,c_black,c_red, string_format(global.haste-global.basehaste,3,1) + "%")
	draw_set_halign(fa_right)
}
	

//draw gcd
if global.gcd == 30
{
	draw_outline_text(x,y+50,c_black,c_lime,string_format(global.gcd/room_speed,4,2) + " s")
}
else
{
	draw_outline_text(x,y+50,c_black,c_white,string_format(global.gcd/room_speed,4,2) + " s")
}

//draw drain
if global.madness == true
{
	draw_outline_text(x,y+100,c_black,c_white,string_format("-",4,1))
}
else if obj_iControl.alarm[2] >= 0
{
	//red
	draw_outline_text(x,y+100,c_black,c_red,string_format(room_speed/global.drain,4,1) + "/s")
	draw_outline_text(x,y+150,c_black,c_red,"+" + string_format(room_speed/global.drain - room_speed/global.drain/global.satiatedModifier,4,1) + "/s")
}
else
{
	draw_outline_text(x,y+100,c_black,c_white,string_format(room_speed/global.drain,4,1) + "/s")
}