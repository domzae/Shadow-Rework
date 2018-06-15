//draw_tooltip_right(text)  

var xx = x;
var yy = y;

var text = argument[0];

draw_set_font(fnt_tooltip);


draw_set_alpha(0.95);
draw_roundrect_color(xx+sprite_width/2+4,yy-sprite_height/2,xx+sprite_width/2+1+string_width(text)+12,yy+sprite_height/2,c_black,c_black,0);
draw_set_alpha(1);
draw_roundrect_color(xx+sprite_width/2+4,yy-sprite_height/2,xx+sprite_width/2+1+string_width(text)+12,yy+sprite_height/2,c_white,c_purple,1);
draw_set_halign(fa_left);
draw_set_valign(fa_center);
draw_set_color(c_white);
draw_text(xx+sprite_width/2+10, yy, string(text));
draw_set_valign(fa_top);