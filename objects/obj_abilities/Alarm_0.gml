/// @description Cooldown/GCD
//saturate image
if cd != 0
{
	image_index --;
}

if abilityName = "Mind Blast" && talMindShatterChargesLeft > 0// global.talMindShatterCharges
{
	image_index ++;
}