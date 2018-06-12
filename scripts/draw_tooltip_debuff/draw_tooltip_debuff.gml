//draw_tooltip_ability(line3)  


draw_set_font(fnt_tooltip);

var xx = mouse_x + 10;
var yy = mouse_y + 20;

var line0 = "Satiated!";
var line1 = "For 10 seconds after Madness";
var line2 = "your insanity generation is";
var line3 = "reduced by " + string((global.satiatedModifier*100)-100) + "%";

var boxheight = 4


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

var longestString = max(string_width(line0),string_width(line1),string_width(line2),string_width(line3))



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
draw_outline_text(xx, yy,c_black,c_white, string(line0));
draw_text(xx, yy+string_height(line0), string(line1));
draw_text(xx, yy+2*string_height(line0), string(line2));
draw_text(xx, yy+3*string_height(line0), string(line3));

draw_set_alpha(1);