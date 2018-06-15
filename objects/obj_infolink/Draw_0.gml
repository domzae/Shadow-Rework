
draw_set_color(c_white);

if point_in_rectangle(mouse_x, mouse_y, left, top, right, bottom)
{
	window_set_cursor(cr_drag);
	draw_tooltip_mouse(string(link), 0)
	draw_set_color(c_fuchsia);
}
else
{
	window_set_cursor(cr_default);
}

draw_set_font(font);

draw_line(left+2,bottom,right,bottom);
draw_text(x, y, text);