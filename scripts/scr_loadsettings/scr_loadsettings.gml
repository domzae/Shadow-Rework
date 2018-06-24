//Default values here
//scr_loadsettings("filename.ini")

var filename = argument[0]

ini_open(working_directory + filename)

scr_importsettings()
/*
global.basedrain = ini_read_real("General","Base Drain",room_speed/5);
global.drain = ini_read_real("General","Drain",room_speed/5);
global.basehaste = ini_read_real("General","Base Haste",20);
global.haste = ini_read_real("General","Current Haste",20);
global.vfhaste = ini_read_real("General","Voidform Haste",15);
global.madnesshaste = ini_read_real("General","Madness Haste",30);

global.aoeTargets = ini_read_real("General","Mind Sear Targets",4);
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

//other
global.multiTal = ini_read_real("Other","Multiple Talents per Row",false);

//talents
global.talFotM = ini_read_real("Talents","Fortress of the Mind",false);
global.talFotMins = ini_read_real("Talents","FotM Insanity Eq",40);

global.talMindShatter = ini_read_real("Talents","Mind Shatter",false);
global.talMindShatterCharges = ini_read_real("Talents","Mind Shatter Charges",2);

global.talBlackout = ini_read_real("Talents","Blackout",false);
global.talBlackoutDotInc = ini_read_real("Talents","Blackout DoT increase",4);

global.talMisery = ini_read_real("Talents","Misery",false);

global.talDarkVoid = ini_read_real("Talents","Dark Void",false);
global.talDarkVoidins = ini_read_real("Talents","Dark Void Insanity",6);
global.talDarkVoidCD = ini_read_real("Talents","Dark Void Cooldown", 35);

global.talAttV = ini_read_real("Talents","Attuned to the Void",false);
global.talAttVCDR = ini_read_real("Talents","Attuned to the Void CDR",1);
global.talAttVInterval = ini_read_real("Talents","Attuned to the Void Interval",2);

global.talHoS = ini_read_real("Talents","Hymn of Sorrow",false);
global.talHoSins = ini_read_real("Talents","Hymn of Sorrow Insanity",36);
global.talHoSpause = ini_read_real("Talents","Hymn of Sorrow Drain Pause",true);
global.talHoSCD = ini_read_real("Talents","Hymn of Sorrow Cooldown",40);

global.talVEntropy = ini_read_real("Talents","Void Entropy",false);
global.talVEntropyCD = ini_read_real("Talents","Void Entropy CD",18);
global.talVEntropyCDR = ini_read_real("Talents","Void Entropy CDR",2);

ini_close();
