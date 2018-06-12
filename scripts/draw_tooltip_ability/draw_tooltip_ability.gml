//draw_tooltip_ability(line3)  


draw_set_font(fnt_tooltip);

var xx = mouse_x + 10;
var yy = mouse_y + 20;

var line0 = string(abilityName);
var line1 = "CD: " + string(cd/room_speed) + "s";
var line2 = "Insanity gained: " + string(insanityGain);
var line3 = string(mouseoverText);

if line3 == ""
{
	var boxheight = 3
}
else
{
	var boxheight = floor(3 + string_height_ext(line3,-1, 600)/string_height(line3));
}

if alarm[5] > -1
{
	var alpha = 0;
}
else if alarm[6] > 0
{
	var alpha = 0.7 - alarm[6]/room_speed;
}
else
{
	var alpha = 0.7;
}

var longestString = max(string_width(line0),string_width(line1),string_width(line2),string_width_ext(line3,-1, 600))


if xx+longestString+10 > room_width
	{
		xx = room_width - longestString - 14 ;
	}
	
if yy+string_height(line0)*boxheight+10 > room_height
	{
		yy = room_height - (string_height(line0)*boxheight+11);
	}

draw_set_alpha(alpha);

draw_set_color(c_black)
draw_rectangle(xx,yy,xx+longestString+10,yy+string_height(line0)*boxheight+10,0);

draw_set_color(c_fuchsia)
draw_rectangle(xx,yy,xx+longestString+10,yy+string_height(line0)*boxheight+10,1);

xx += 5;
yy += 5;
draw_set_halign(fa_left);
draw_set_color(c_white);
draw_outline_text(xx, yy,c_black,c_white, line0);
draw_text(xx, yy+string_height(line0), line1);
draw_text(xx, yy+2*string_height(line0), line2);
draw_text_ext(xx, yy+3*string_height(line0), line3,-1,600);

draw_set_alpha(1);