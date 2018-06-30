/// @description drop icon
if pickup = true
{
	pickup = false
	image_xscale = 1;
	image_yscale = 1;

	var col = instance_place(x,y,obj_abilities)
	if col != noone
	{
		x = col.x
		y = col.y
		col.x = curx
		col.y = cury
	
		curx = x
		cury = y
		col.curx = col.x
		col.cury = col.y
	}
	else
	{
		x = curx
		y = cury
	}
}	