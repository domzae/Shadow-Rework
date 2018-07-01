start = true
totalDamage = 0
totalTime = 0
totalDPS = 0

madnessDamage = 0
madnessTime = 0
madnessDPS = 0


//damage grid
// [  0  ,   1  ,  2 ,  3  ,  4  , 5 , 6 , 7 ,  8 ,  9  ]
// [keyid,damage,hits,crits,casts,avg,min,max,name,sname]
key=0
damageGrid = ds_grid_create(10, 14)
for (key=0; key<14; key++)
{
	ds_grid_set(damageGrid,0,key,key)
	
	with obj_abilities
	{
		if keyid == other.key
		ds_grid_set(other.damageGrid,8,keyid,abilityName)
	}
}
damageGrid[# 9,0] = "MF"
damageGrid[# 9,1] = "MS"
damageGrid[# 9,2] = "MB"
damageGrid[# 9,3] = "SW:D"
damageGrid[# 9,4] = "VB"
damageGrid[# 9,5] = "VEr"
damageGrid[# 9,6] = "SW:P"
damageGrid[# 9,7] = "VT"
damageGrid[# 9,9] = "DV"
damageGrid[# 9,10] = "HoS"
damageGrid[# 9,11] = "VEnt"
damageGrid[# 9,13] = "CttV"
damageGrid[# 8,13] = "Call to the Void"
