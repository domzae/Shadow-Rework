image_speed = 0;
cdLeft = 0;
dotApplied = false;
madnessStart = true;
focus = false;
setbinding = false;


global.lastGCDinstant = false;

if cd > 0
{
	cd *= room_speed;
}
event_perform_object(obj_abilityControl,ev_create,0)

//mind shatter talent
/*if global.talMindShatter == true and id == inst_mindblast.id
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
}*/

