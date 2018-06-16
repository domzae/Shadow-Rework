/// @description change binding

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
