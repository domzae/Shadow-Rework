maxHP = global.maxHP;
currentHP = maxHP
currentPerc = (currentHP/maxHP)*100

focus = false
mouseover = false

inst_enemy1.focus = true
global.enemyFocus = inst_enemy1.id

//dots
VTApplied = false;
SWPApplied = false;
VEApplied = false;

thisDot = 0;
thisVTDur = 0;
thisSWPDur = 0;
thisVEDur = 0;

//swd
madForDeath = instance_create_depth(x+sprite_width/3,y,-1,obj_debuff_SWD)