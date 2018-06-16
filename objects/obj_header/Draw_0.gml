draw_set_halign(fa_left);
draw_set_font(fnt_header);

draw_outline_text(x,y,c_white,c_purple,"Ellipsis' Shadow Priest Rework");

draw_set_font(fnt_subheader);

draw_outline_text(x,y+100,c_purple,c_white,"Concept by Ellipsis\nGUI by Domzae");

//version
draw_set_font(fnt_basic)
draw_text(0,0,"v" + GM_version)