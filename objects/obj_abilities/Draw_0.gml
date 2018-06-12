draw_self();

draw_set_font(fnt_cd);
draw_set_halign(fa_middle);


draw_set_colour(c_yellow);
draw_set_alpha(($FF000000 >> 24) / $ff);

//draw_text(x, y - 32, string(abilityName));

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
if focus == true
{
	draw_sprite(spr_abilityover,0,x,y);
	draw_tooltip_ability();
}

/*
if alarm[3] > 0
{
	//draw +insanity from cast next to insanity bar
	draw_set_halign(fa_left);
	draw_set_font(fnt_insanity);
	draw_outline_text(obj_insanity.x + 545 , obj_insanity.y - 22, c_black, c_green, "+ " + string(insanityGain));

	//draw cast name on cast bar
	draw_set_font(fnt_basic);
	draw_set_halign(fa_left);
	draw_outline_text(obj_castBar.x - 348,obj_castBar.y - 16,c_black,c_white, string(abilityName));
}

if alarm[1] > 0 and global.channeling == true
{
	//draw +insanity from channel next to insanity bar
	draw_set_halign(fa_left);
	draw_set_font(fnt_insanity);
	draw_outline_text(obj_insanity.x + 545 , obj_insanity.y - 22, c_black, c_green, "+" + string_format(insanityGain/4,3,1));

	//draw channel name on cast bar
	draw_set_font(fnt_basic);
	draw_set_halign(fa_left);
	draw_outline_text(obj_castBar.x - 348,obj_castBar.y - 16,c_black,c_white, string(abilityName));
}
*/

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

