//scr_damage(damage,targetid)

damage = argument[0]
var focTar = argument[1]

//madness multiplier
if global.madness == true
{
	damage *= (1+ (global.dmgMadness/100))
	//Allure multiplier
	if global.talAllure == true
	{
		damage *= (1+ (obj_allure.dmgAllure/100))
	}
}
//Focused Insanity multiplier
else if global.talFocusedInsanity == true
{
	damage *= (1+ (obj_talFI.dmgFocusedInsanity/100))
}

//crit multiplier
if irandom(100/min(100,global.baseCrit)-1) == 0
{
	damage *= 2
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
obj_damage.secondDamage += damage

/*if obj_enemy.focus == true
{
	obj_enemy.currentHP -= damage
}
