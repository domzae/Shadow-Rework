/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//mind shatter talent
if global.talMindShatter == true
{
	for (var i=global.talMindShatterCharges; i > 0 ; i--;)
	{
		shatterInst[i] = instance_create_layer(x,y,"Instances",obj_mindShatter);
			
		shatterInst[i].visible = false

	}
	talMindShatterChargesLeft = global.talMindShatterCharges;
}
else if global.talMindShatter == false
{
	talMindShatterChargesLeft = 0
}
