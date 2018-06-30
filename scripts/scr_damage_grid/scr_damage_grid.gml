//scr_damage_grid(thisDot);
// [  0  ,   1  ,  2 ,  3  ,  4  , 5 , 6 , 7 ,  8 ]
// [keyid,damage,hits,crits,casts,avg,min,max,name]
if (argument_count > 0)
{
	var yy = argument[0].keyid
}
else
{
	var yy = keyid
}
var g = obj_damage.damageGrid;

ds_grid_add(g,1,yy,damage) //add damage


ds_grid_add(g,2,yy,1) //add hit count

if crit == true
{
	ds_grid_add(g,3,yy,1) //add crit count
}

var d = ds_grid_get(g,1,yy)
var c = ds_grid_get(g,2,yy)
var a = d/c
var mi = ds_grid_get(g,6,yy)
var ma = ds_grid_get(g,7,yy)

ds_grid_set(g,5,yy,a) //set average

if mi == 0 or damage < mi //set new min
{
	ds_grid_set(g,6,yy,damage)
}

if damage > ma //set new max
{
	ds_grid_set(g,7,yy,damage)
}