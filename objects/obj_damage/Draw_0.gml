var strDMG = ""
var strDPS = ""
var gap = 30

var x1 = x-400
var y1 = y-gap
var x2 = x
var y2 = y+gap*10

draw_set_font(fnt_basic)

//draw box
draw_set_alpha(0.4)
draw_set_color(c_black)
draw_rectangle(x1-5,y1-5,x2+5,y2+5,0)
draw_set_alpha(1)
draw_set_color(c_white)
draw_rectangle(x1-5,y1-5,x2+5,y2+5,1)
draw_line(x1-5,y1+gap+1,x2+5,y1+gap+1)


draw_set_halign(fa_left)
draw_set_valign(fa_top);
//draw_outline_text(x, y, outline color, string color, string)  
draw_outline_text(x1,y1-4,c_black,c_white,"Total:")


if totalDamage < 100000
{
 strDMG = string_thousands_scripts(totalDamage)
}
else
{
 strDMG = string_abbrev_real(totalDamage,2)
}

if totalDPS < 100000
{
	strDPS = string_thousands_scripts(totalDPS)
}
else
{
	strDPS = string_abbrev_real(totalDPS,2)
}
draw_set_halign(fa_right)
draw_outline_text(x2,y1-4,c_black,c_white,strDMG + " (" + strDPS + ")")

//Time
var strSecs = string_zeroes_scripts(totalTime mod 60,2)
var strMins = string(totalTime div 60)
if alarm[0] > -1
{
	draw_outline_text(x2,y1-44,c_black,c_lime,strMins + ":" +strSecs)
	draw_set_halign(fa_left)
	draw_outline_text(x1,y1-44,c_black,c_white,"          Activity Time:")
}
else
{
	draw_outline_text(x2,y1-44,c_black,c_orange,strMins + ":" +strSecs)
	draw_set_halign(fa_left)
	draw_outline_text(x1,y1-44,c_black,c_white,"          Paused")
}

// [  0  ,   1  ,  2 ,  3  ,  4  , 5 , 6 , 7 ,  8 ,  9  ]
// [keyid,damage,hits,crits,casts,avg,min,max,name,sname]
ds_grid_sort(damageGrid,1,false)
for (var i=0; i<14; i++)
{
	var shortDmg = ds_grid_get(damageGrid,1,i)
	var shortName = string(ds_grid_get(damageGrid,9,i))
	var perc = shortDmg/totalDamage*100
	if shortDmg == 0
	{
		break;
	}	
	
	if shortDmg < 10000
	{
		shortDmg = string_thousands_scripts(shortDmg)
	}
	else
	{
		shortDmg = string_abbrev_real(shortDmg,2)
	}
	
	//% bar bg
	draw_set_alpha(0.2)
	draw_rectangle_color(x1-5,y+gap*i+2,x1+(x2-x1)*(perc/100)+5,y+gap*(i+1)-2,c_aqua,c_aqua,c_blue,c_blue,0)
	draw_set_alpha(1)
	
	//bar text
	draw_set_halign(fa_left)
	draw_outline_text(x1,y+gap*i,c_black,c_white,shortName);
	draw_set_halign(fa_right)
	draw_outline_text(x2,y+gap*i,c_black,c_white,shortDmg + "(" + string_format(perc,3,1) + "%)");
	
	
}
for (var i=0; i<14; i++)
{
	var shortDmg = ds_grid_get(damageGrid,1,i)
	if shortDmg == 0
	{
		break;
	}
	//mouseover
	if point_in_rectangle(mouse_x,mouse_y,x1-5,y+gap*i+2,x2+5,y+gap*(i+1)-2)
	{
		draw_rectangle(x1-5,y+gap*i+2,x2+5,y+gap*(i+1)-2,1)
		var name = string(damageGrid[# 8,i])
		var casts = string_format(damageGrid[# 4,i],3,0)
		var hits = string_format(damageGrid[# 2,i],3,0)
		var crits = string_format(damageGrid[# 3,i],3,0)
		var critper = string_format(real(crits)/real(hits)*100,3,1)
		var avg = string_thousands_scripts(damageGrid[# 5,i])
		var mi = string_thousands_scripts(damageGrid[# 6,i])
		var ma = string_thousands_scripts(damageGrid[# 7,i])
		var dpe = string_thousands_scripts(shortDmg/real(casts))
		draw_tooltip_mouse(name+"\nCasts: "+casts+"\nHits: "+hits+"\nCrits: "+crits+"("+critper+"%)\nAvg: "+avg+"\nMin: "+mi+"\nMax: "+ma+"\nDPE: "+dpe,0)
	}
}

if point_in_rectangle(mouse_x,mouse_y,x1-5,y1-4,x2+5,y)
{
	draw_rectangle(x1-4,y1-4,x2+4,y,1)
	draw_tooltip_mouse("Madness Time: " + string(madnessTime) + "\nMadness Damage: " + string_thousands_scripts(madnessDamage) + "\nMadness DPS: " + string_thousands_scripts(madnessDPS),0)
}

//reset grid order for updates
ds_grid_sort(damageGrid,0,true)