/// @description AttV CDR
if global.sanity == false and global.madness == false and inst_s2m.cdLeft != global.gcdLeft
{
	inst_s2m.alarm[0] = inst_s2m.alarm[0] - global.talAttVCDR*global.talAttVInterval*room_speed
}