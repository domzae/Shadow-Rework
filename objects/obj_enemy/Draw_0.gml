if focus == true
{
	draw_self();
	
}

draw_healthbar(x+3,y+3,x+sprite_width-4,y+sprite_height-4,currentPerc,c_black,c_red,c_green,0,true,false);

draw_set_halign(fa_right)
draw_set_valign(fa_center)
draw_set_font(fnt_basic)
draw_outline_text(x+sprite_width-3,y+sprite_height/2,c_black,c_white,string_format(currentPerc,5,1) + "%")
	
draw_set_halign(fa_middle);
//draw dot times
if SWPApplied == true
{
	draw_sprite_stretched(spr_swpain,0,x+sprite_width+5,y,50,50)
	draw_outline_text(x+sprite_width+30,y+sprite_height/2,c_black,c_green,string_format(alarm[0]/room_speed,3,1));
}
if VTApplied == true
{
	draw_sprite_stretched(spr_vampirictouch,0,x+sprite_width+70,y,50,50)
	draw_outline_text(x+sprite_width+92,y+sprite_height/2,c_black,c_green,string_format(alarm[1]/room_speed,3,1));
}
if VEApplied == true
{
	draw_sprite_stretched(spr_voidentropy,0,x+sprite_width+135,y,50,50)
	draw_outline_text(x+sprite_width+154,y+sprite_height/2,c_black,c_green,string_format(alarm[4]/room_speed,3,1));
}

//mouseover
if mouseover == true
{
	draw_set_font(fnt_tooltip)
	draw_set_valign(fa_top)
	draw_set_halign(fa_left)
	draw_outline_text(20, 1020,c_black,c_white,"Click to change target, <TAB> to cycle through targets");
}