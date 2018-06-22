//draw_border(c_color,x off,y off)

var l = x + argument[1]
var t = y + argument[2]
var r = l + sprite_width
var b = t + sprite_height

var c = argument[0]

draw_rectangle_color(l,t,r,b,c,c,c,c,1)