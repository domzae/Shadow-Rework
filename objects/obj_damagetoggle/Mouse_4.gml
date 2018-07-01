
//scr_ds_grid_print(obj_damage.damageGrid);

if global.dmgON == false  //Turn ON dmg/enemies
{
	global.dmgON = true;
	image_index = 1;
	with obj_damage
	{
		visible = true
	}
	with obj_damagePause
	{
		visible = true
	}
	with obj_enemy
	{
		visible = true
		currentHP = maxHP
	}
}
else //Turn OFF dmg/enemies
{
	global.dmgON = false;
	image_index = 0;
	with obj_damage
	{
		visible = false
		alarm[0] = -1
	}
	with obj_damagePause
	{
		visible = false
	}
	with obj_enemy
	{
		visible = false
		currentHP = 0;
	}
}