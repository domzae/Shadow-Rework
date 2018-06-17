var y1 = 103 //unselected
var y2 = 203 //mouseover
var y3 = 303 //selected
var yh =  spr_h

x += 40
y += yh/2
draw_self() //draw icon
x -= 40
y -= yh/2

draw_set_font(fnt_settings);
draw_set_halign(fa_middle)
draw_set_valign(fa_center)

//Talent name

draw_outline_text_ext(x+(sprite_width+spr_w)/2+10, y+spr_h/2,c_black,c_white, string(talentName),-1, spr_w-sprite_width-50); //talent name
draw_set_valign(fa_top)

//selected
if focus == false
{
	draw_sprite_part(spr_talentset,0,0,y1,spr_w,yh,x,y)
}
else
{	
	draw_sprite_part(spr_talentset,0,0,y3,spr_w,yh,x,y)
}

//mouseover
if mouseover == true
{
	draw_sprite_part(spr_talentset,0,0,y2,spr_w,yh,x,y)
	draw_tooltip_mouse(talentText,400);
}
	
	
