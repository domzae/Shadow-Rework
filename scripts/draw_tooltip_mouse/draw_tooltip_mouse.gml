//draw_tooltip_mouse(text,maxWidth)  


draw_set_font(fnt_tooltip);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

var xx = mouse_x + 10;
var yy = mouse_y + 20;

var text = argument[0];
var maxWidth = argument[1];

if maxWidth == 0  //default to string width
{
	maxWidth = string_width(text)
}

var boxheight = string_height_ext(text,-1,maxWidth)+10;
var boxwidth = string_width_ext(text,-1,maxWidth)+10;

var alpha = 0.88;



if xx+boxwidth + 11 > room_width
	{
		xx = room_width - boxwidth - 11;
	}
	
if yy+boxheight + 11 > room_height
	{
		yy = room_height - boxheight - 11;
	}

draw_set_alpha(alpha);

draw_set_color(c_black)
draw_rectangle(xx,yy,xx+boxwidth,yy+boxheight,0);

draw_set_color(c_fuchsia)
draw_rectangle(xx,yy,xx+boxwidth,yy+boxheight,1);

xx += 5;
yy += 5;

draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_color(c_white);

//draw_outline_text(xx, yy,c_black,c_white, string(text));
draw_text_ext(xx, yy, text, -1, maxWidth);

