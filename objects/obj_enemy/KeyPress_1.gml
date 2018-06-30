if global.dmgON == true
{
	if keyboard_lastkey == vk_tab and focus == true
	{	
		var inst = instance_place(x,y-50,obj_enemy)
		if inst != noone
		{
			global.enemyFocus = inst
		}
		else
		{
			global.enemyFocus = inst_enemy1
		}
	}
}