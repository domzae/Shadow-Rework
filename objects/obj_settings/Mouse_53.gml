/* The second set of coords in rectangle are size of collision box and should be
set to the size of the text box. This text box is 100x20 (x + 100, y + 20) */
//check if user has clicked the text box
if mouseover == true
  {
     focus = true;
	 image_index = 1;
	 userinput = "";
  }
//if user clicked outside text box make the text box lose focus
else if (focus = true)
  {
     focus = false;
	 image_index = 0
	 if userinput == ""
	 {
		 userinput = previousval;
	 }
	 else
	 {
		 userinput = real(userinput)
	 }
  }