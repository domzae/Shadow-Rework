//scr_damage(damage,targetid)
if global.dmgON == true //&& obj_damage.alarm[0] != -1
{
	//start recording dps if not already
	if obj_damage.alarm[0] = -1
	{
		obj_damage.alarm[0] = room_speed
	}
	
	crit = false
	damage = argument[0]
	var focTar = argument[1]

	//madness multiplier
	if global.madness == true
	{
		var maddmg = 0;
		
		if object_index == obj_voidbolt.object_index
		{
			maddmg = (1+ (global.dmgVBMadness/100))
		}
		else
		{
			maddmg = (1+ (global.dmgMadness/100))
		}
		//Allure multiplier
		if global.talAllure == true
		{
			maddmg += (obj_allure.dmgAllure/100)
		}
		damage *= maddmg
	}
	//Focused Insanity multiplier
	else if global.talFocusedInsanity == true
	{
		damage *= (1+ (obj_talFI.dmgFocusedInsanity/100))
	}

	//crit multiplier
	if global.baseCrit > 0
	{
		if irandom(100/clamp(global.baseCrit,1,100)-1) == 0
		{
			damage *= 2
			crit = true
		}
		else
		{
			crit = false
		}
	}


	if focTar == 0 //aoe
	{
		with obj_enemy
		{
			//twist of fate - mastery
			if currentPerc < 100
			{
				other.damage *= (1+ ( (1-(currentPerc/100))*global.maxMastery)/100)
			}	
			currentHP -= other.damage/global.aoeTargets
		}
	}
	else
	{
		with focTar
		{
			//twist of fate - mastery
			if currentPerc < 100
			{
				other.damage *= (1+ ( (1-(currentPerc/100))*global.maxMastery)/100)
			}	
			currentHP -= other.damage
		}
	}

	obj_damage.totalDamage += damage
	if global.madness == true
	{
		obj_damage.madnessDamage += damage
	}

	if object_index == obj_enemy
	{
		scr_damage_grid(thisDot)
	}
	else
	{
		scr_damage_grid();
	}
}
	/*if obj_enemy.focus == true
	{
		obj_enemy.currentHP -= damage
	}
