draw_set_halign(fa_left);
draw_set_valign(fa_top)
draw_set_font(fnt_info);
draw_set_color(c_white);


draw_outline_text_ext(x, y,c_black,c_white,text+text1+text2,-1,room_width/2-32);

draw_set_color(c_red)
draw_outline_text_ext(x+room_width/2+32, y,c_black,c_red, text3+text4,-1,room_width-32);

draw_outline_text(x,room_height-180,c_black,c_lime,text5);