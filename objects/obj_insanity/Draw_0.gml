draw_set_font(fnt_insanity);
draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_set_color(c_white);

draw_outline_text(x + 525, y -22,c_black,c_white, string_format(floor(global.insanity),3,0));