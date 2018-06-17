//Default values here
//scr_loadsettings("filename.ini")

var filename = argument[0]

ini_open(working_directory + filename)

global.basedrain = ini_read_real("General","Base Drain",room_speed/5);
global.drain = ini_read_real("General","Drain",room_speed/5);
global.basehaste = ini_read_real("General","Base Haste",20);
global.haste = ini_read_real("General","Current Haste",20);
global.vfhaste = ini_read_real("General","Voidform Haste",15);
global.madnesshaste = ini_read_real("General","Madness Haste",30);

global.searTargets = ini_read_real("General","Mind Sear Targets",4);
global.CttVrppm = ini_read_real("General","Call to the Void RPPM",2);


global.madnessTime = ini_read_real("Madness","Madness Duration",12);
global.surrenderTime = ini_read_real("Madness","Surrender Duration",20);
global.satiatedModifier = ini_read_real("Madness","Satiated %",1.33);
global.satiatedTime = ini_read_real("Madness","Satiated Duration",10);
global.surrenderExitIns = ini_read_real("Madness","Surrender Exit Insanity",80);


//ability cds
global.cdMindBlast = ini_read_real("Cooldowns","Mind Blast CD",4);
global.cdSWDeath = ini_read_real("Cooldowns","SW: Death CD",12);
global.cdVBolt = ini_read_real("Cooldowns","Void Bolt CD",0);
global.cdVEruption = ini_read_real("Cooldowns","Void Eruption CD",4);
global.cdS2M = ini_read_real("Cooldowns","Surrender to Madness CD",180);
global.cdSharedVoid = ini_read_real("Cooldowns","Void Shared CD",3);

//insanity gains
global.insgainMindBlast = ini_read_real("Insanity","Mind Blast Insanity",15);
global.insgainSWDeath = ini_read_real("Insanity","SW: Death Insanity",20);
global.insgainVBolt = ini_read_real("Insanity","Void Bolt Insanity",0);
global.insgainVEruption = ini_read_real("Insanity","Void Eruption Insanity",-20);
global.insgainMindFlay = ini_read_real("Insanity","Mind Flay Insanity",22);
global.insgainMindSear = ini_read_real("Insanity","Mind Sear Insanity",8);
global.insgainSWPain = ini_read_real("Insanity","SW: Pain Insanity",11);
global.insgainVT = ini_read_real("Insanity","Vampiric Touch Insanity",11);
global.insgainCttV = ini_read_real("Insanity","Call to the Void Insanity", 20);

ini_close();
