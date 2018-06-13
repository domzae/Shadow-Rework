var k=keyboard_lastkey;
var c=keyboard_lastchar;

if userinput != ""
{
	previousval = userinput;
}

if (focus = true)
{

	if keyboard_check_pressed(vk_anykey)
	{
	    if (k==vk_backspace)
	    {
	        // delete last character
	        userinput = string_copy(userinput, 1, string_length(userinput)-1 );
			//check if 0 chars
			if string_length(userinput) = 0
				userinput = ""
	    }
	    else if (k==vk_enter) and (userinput!="")
	    {
	        // enter was pressed and input wasn't empty : do what have to be done here !
			focus = false;
			image_index = 0
			userinput = real(userinput)
	    }
			// 48-57  : numbers
		    // 96-105 : numpad numbers
			// 109	  : numpad dash
		    // 110    : numpad decimal
			// 189	  : dash
			// 190    : decimal
	    else if ((k>=48 and k<=57) || (k>=96 and k<=105) || k=vk_decimal || k=110 || k=109 || k=60 || k=189 || k=190) and string_length(userinput) < maxCharacters
	    {
	        
			if userinput = 0
			{
				userinput = c;
			}
			else
			{
	        userinput = string(userinput) + c;
			}
	    }
		
		else
		{
			userinput = "";
		}
		
	}
}

//mouseover tooltip
draw_set_font(fnt_settings);
var width = string_width(leftText)+sprite_width;
var height = sprite_height;

var offset = 5;
left = x - string_width(leftText) - offset;
top = y - offset;
right = left + width - 1 + offset;
bottom = top + height - 1 + offset;

if point_in_rectangle(mouse_x, mouse_y, left, top, right, bottom)
{
	mouseover = true;
}
else
{
	mouseover = false;
}
