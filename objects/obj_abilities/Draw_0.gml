draw_self();

draw_set_font(fnt_cd);
draw_set_halign(fa_middle);


draw_set_colour(c_yellow);
draw_set_alpha(($FF000000 >> 24) / $ff);


if cdLeft == 0 or cdLeft == global.gcdLeft
{
}
else if cdLeft < 4
{
	draw_outline_text(x-4, y-25,c_black,c_yellow, string_format(cdLeft,3,1));
}
else if cdLeft > 100
{
	draw_outline_text(x, y-25,c_black,c_yellow, string_format(cdLeft,3,0));
}
else
{
	draw_outline_text(x, y-25,c_black,c_yellow, string_format(cdLeft,2,0));
}	

//mouseover 
if focus == true && setbinding == false
{
	draw_sprite(spr_abilityover,0,x,y);
	draw_tooltip_ability();
	draw_outline_text(20, 1000,c_black,c_white,"Right/Middle-Click to change key binding (numbers/letters only)");
}

//gcd overlay
if cdLeft == global.gcdLeft and cdLeft > 0
{
	draw_set_alpha(0.3);
	draw_set_color(c_black);
	draw_rectangle(x-53,y+62,x+59,y+62-cdLeft*room_speed/global.gcd*112,0);
	draw_set_alpha(1);
}

//draw dot time
if dotApplied == true
{
	draw_set_font(fnt_insanity);
	draw_set_halign(fa_middle);
	draw_outline_text(x+3,y-25,c_black,c_green,string_format(alarm[4]/room_speed,3,1));
}

//unuseable ovelay
if isVoid == true and global.sanity == true
{
	draw_set_alpha(0.5);
	draw_set_color(c_red);
	draw_rectangle(x-53,y+62,x+59,y-50,0);
	draw_set_alpha(1);
}

//draw keybind
draw_set_halign(fa_middle);
draw_set_font(fnt_basic);
draw_outline_text(x+30,y-50,c_black,c_white, string(keybind));

//draw newbinding
if setbinding == true
{
	draw_set_color(c_black)
	draw_rectangle(x+15,y-48,x+48,y-20,0);
	draw_set_color(c_lime)
	draw_rectangle(x+15,y-48,x+48,y-20,1);
	
	draw_tooltip_settings("Press a button to set a keybind for " + abilityName)
}