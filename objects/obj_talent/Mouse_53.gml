
var oinst
//check if user has clicked the text box
if mouseover == true && focus == false
{    
	//multi talent
	if global.multiTal == false
	{
		var i;
		for (i = 0; i < instance_number(obj_talent); i += 1)
		{
			oinst = instance_find(obj_talent,i);
		
			if row == oinst.row
			{
				oinst.focus = false;
			}
		
		}
	}
	
	focus = true;
}
else if mouseover == true
{
	focus = false;
}