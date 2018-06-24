if global.enemyFocus != id
{
	focus = false
}
else
{
	focus = true
}
currentHP = clamp(currentHP,0,global.maxHP)
currentPerc = (currentHP/maxHP)*100

