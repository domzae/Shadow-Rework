/// @description pickup icon

if point_in_rectangle(mouse_x,mouse_y,x-56,y-56,x+56,y+56)
{
	//curx = x
	//cury = y
	pickup = true
	image_xscale = 1.1;
	image_yscale = 1.1;
}
/*
if point_in_rectangle(mouse_x,mouse_y,x-53,y-50,x+50,y+62)
{
	if setbinding == false
	{
		setbinding = true;
	}
	else
	{
		setbinding = false;
	}
	io_clear();
}
else
{
	setbinding = false;
}
