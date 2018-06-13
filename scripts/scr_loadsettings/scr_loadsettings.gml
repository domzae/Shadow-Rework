ini_open(working_directory + "settings.ini")

global.basedrain = ini_read_real("General","Base Drain",room_speed/5);
global.drain = ini_read_real("General","Drain",room_speed/5);
global.basehaste = ini_read_real("General","Base Haste",30);
global.vfhaste = ini_read_real("General","Voidform Haste",15);
global.madnesshaste = ini_read_real("General","Madness Haste",30);
global.haste = ini_read_real("General","Current Haste",30);

global.searTargets = ini_read_real("General","Mind Sear Targets",4);


global.madnessTime = ini_read_real("Madness","Madness Duration",12);
global.surrenderTime = ini_read_real("Madness","Surrender Duration",20);
global.satiatedModifier = ini_read_real("Madness","Satiated %",1.33);
global.satiatedTime = ini_read_real("Madness","Satiated Duration",10);


//ability cds
global.cdMindBlast = ini_read_real("Cooldowns","Mind Blast CD",4);
global.cdSWDeath = ini_read_real("Cooldowns","SW: Death CD",12);
global.cdVBolt = ini_read_real("Cooldowns","Void Bolt CD",0);
global.cdVEruption = ini_read_real("Cooldowns","Void Eruption CD",4);
global.cdS2M = ini_read_real("Cooldowns","Surrender to Madness CD",180);
global.cdSharedVoid = ini_read_real("Cooldowns","Void Shared CD",3);

//insanity gains
global.insgainMindBlast = ini_read_real("Insanity","Mind Blast Insanity",20);
global.insgainSWDeath = ini_read_real("Insanity","SW: Death Insanity",25);
global.insgainVBolt = ini_read_real("Insanity","Void Bolt Insanity",0);
global.insgainVEruption = ini_read_real("Insanity","Void Eruption Insanity",-20);
global.insgainMindFlay = ini_read_real("Insanity","Mind Flay Insanity",16);
global.insgainMindSear = ini_read_real("Insanity","Mind Sear Insanity",6);
global.insgainSWPain = ini_read_real("Insanity","SW: Pain Insanity",6);
global.insgainVT = ini_read_real("Insanity","Vampiric Touch Insanity",6);

ini_close();