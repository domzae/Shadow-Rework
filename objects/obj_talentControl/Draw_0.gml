//draw Mind Shatter charges

if global.talMindShatter == true
{
	draw_outline_text(inst_mindblast.x, inst_mindblast.y-60,c_black,c_yellow,string(inst_mindblast.talMindShatterChargesLeft))
}



var rowspace = 80
var colspace = 80

var row1 = y;
var row2 = y + rowspace;
var row3 = y + rowspace*2;

var col1 = x;
var col2 = x + colspace;
var col3 = x + colspace*2;

draw_set_halign(fa_left)
draw_outline_text(x,y-80,c_black,c_green,"Current Talents")

if global.talFotM == true
{
	draw_sprite(spr_talenticon,1,col1,row1);
}
if global.talMindShatter == true
{
	draw_sprite(spr_talenticon,2,col2,row1);
}
//if global.tal? == true
//{
	//emptytal
//}
if global.talBlackout == true
{
	draw_sprite(spr_talenticon,4,col1,row2);
}
if global.talMisery == true
{
	draw_sprite(spr_talenticon,5,col2,row2);
}
if global.talDarkVoid == true
{
	draw_sprite(spr_talenticon,6,col3,row2);
}
if global.talAttV == true
{
	draw_sprite(spr_talenticon,7,col1,row3);
}
if global.talHoS == true
{
	draw_sprite(spr_talenticon,8,col2,row3);
}
if global.talVEntropy == true
{
	draw_sprite(spr_talenticon,9,col3,row3);
}