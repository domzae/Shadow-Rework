//draw Focused Insanity
if global.madness == false
{
	
	//sine wave
	draw_set_color(c_purple)
	var xx = obj_insanity.x
	var yy = obj_insanity.y+50
	for(var i=0;i<400;i++) //You could also make a variable length=512 in create event, and put length here
	{
	    //Just play with these 4 values
	    var a = 100 //Amplitude
	    var b = pi/400 //Compression
	    var c = 0 //x-axis offset
	    var d = 0 //y-axis offset

	    //no need to change anything below unless you want to make a more complex or implicit function
	    var x1 = xx + i
	    var x2 = xx + i+1
	    var y1 = yy-a*sin(b*i+c)+d
	    var y2 = yy-a*sin(b*(i+1)+c)+d
    
	    draw_line(x1,y1,x2,y2)
	}
	//Bar triangle
	/*draw_set_alpha(0.15)
	var peak = 400*((global.talFocusedInsanityPeak-50)/50)
	draw_triangle_color(obj_insanity.x,obj_insanity.y+50,obj_insanity.x+peak,obj_insanity.y-50,obj_insanity.x+400,obj_insanity.y+50,c_white,c_red,c_white,0)
	draw_set_alpha(1)*/
	
	
	//Text
	if global.sanity == false
	{
		//border
		draw_border(c_green,0,0)
		
		draw_self()
		draw_set_halign(fa_left)
		draw_set_valign(fa_center)
		draw_set_font(fnt_medium)
		draw_outline_text(x+2,y+sprite_height/2,c_black,c_yellow,string_format(dmgFocusedInsanity,2,0) + "%")
		draw_set_valign(fa_top)
		
		//mouseover
		if focus == true
		{
			draw_sprite_stretched(spr_abilityover,0,x,y,sprite_width,sprite_height);
			draw_tooltip_mouse(tooltipText,0);
		}
	}
}