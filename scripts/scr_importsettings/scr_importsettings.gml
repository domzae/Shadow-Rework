//Default values here
//scr_loadsettings()

global.basedrain = ini_read_real("General","Base Drain",room_speed/4);
global.drain = ini_read_real("General","Drain",room_speed/4);
global.basehaste = ini_read_real("General","Base Haste",20);
global.haste = ini_read_real("General","Current Haste",20);
global.vfhaste = ini_read_real("General","Voidform Haste",15);
global.madnesshaste = ini_read_real("General","Madness Haste",30);

global.aoeTargets = ini_read_real("General","Mind Sear Targets",3);
global.CttVrppm = ini_read_real("General","Call to the Void RPPM",2);


global.madnessTime = ini_read_real("Madness","Madness Duration",10);
global.surrenderTime = ini_read_real("Madness","Surrender Duration",20);
global.satiatedModifier = ini_read_real("Madness","Satiated %",1.4);
global.satiatedTime = ini_read_real("Madness","Satiated Duration",12);
global.surrenderExitIns = ini_read_real("Madness","Surrender Exit Insanity",70);
global.madnessHasteDecay = ini_read_real("Madness","Madness Haste Decay",true);


//ability cds
global.cdMindBlast = ini_read_real("Cooldowns","Mind Blast CD",5);
global.cdSWDeath = ini_read_real("Cooldowns","SW: Death CD",11);
global.cdVBolt = ini_read_real("Cooldowns","Void Bolt CD",0);
global.cdVEruption = ini_read_real("Cooldowns","Void Eruption CD",6);
global.cdS2M = ini_read_real("Cooldowns","Surrender to Madness CD",180);
global.cdSharedVoid = ini_read_real("Cooldowns","Void Shared CD",3);

//insanity gains
global.insgainMindBlast = ini_read_real("Insanity","Mind Blast Insanity",18);
global.insgainSWDeath = ini_read_real("Insanity","SW: Death Insanity",25);
global.insgainVBolt = ini_read_real("Insanity","Void Bolt Insanity",-5);
global.insgainVEruption = ini_read_real("Insanity","Void Eruption Insanity",-25);
global.insgainMindFlay = ini_read_real("Insanity","Mind Flay Insanity",18);
global.insgainMindSear = ini_read_real("Insanity","Mind Sear Insanity",10);
global.insgainSWPain = ini_read_real("Insanity","SW: Pain Insanity",8);
global.insgainVT = ini_read_real("Insanity","Vampiric Touch Insanity",8);
global.insgainCttV = ini_read_real("Insanity","Call to the Void Insanity", 22);

//other
global.multiTal = ini_read_real("Other","Multiple Talents per Row",false);
global.durSWPain = ini_read_real("Other","Shadow Word: Pain Duration",18);
global.durVT = ini_read_real("Other","Vampiric Touch Duration",22);
global.spellQueue = ini_read_real("Other","Spell Queue",0.3);

//talents
global.talFotM = ini_read_real("Talents","Fortress of the Mind",false);
global.talFotMins = ini_read_real("Talents","FotM Insanity Eq",33);

global.talMindShatter = ini_read_real("Talents","Mind Shatter",false);
global.talMindShatterCharges = ini_read_real("Talents","Mind Shatter Charges",2);

global.talFocustheVoid = ini_read_real("Talents","Focus the Void",false);
global.talFocustheVoidCD = ini_read_real("Talents","Focus the Void CD",40);
global.talFocustheVoidDur = ini_read_real("Talents","Focus the Void Duration",4);
//global.talPainDischarge = ini_read_real("Talents","Pain Discharge",false);
//global.talPainDischargeins = ini_read_real("Talents","Pain Discharge Insanity",10);

global.talBlackout = ini_read_real("Talents","Blackout",false);
global.talBlackoutDotInc = ini_read_real("Talents","Blackout DoT increase",2.5);

global.talMisery = ini_read_real("Talents","Misery",false);

global.talDarkVoid = ini_read_real("Talents","Dark Void",false);
global.talDarkVoidins = ini_read_real("Talents","Dark Void Insanity",12);
global.talDarkVoidCD = ini_read_real("Talents","Dark Void Cooldown", 35);

global.talAttV = ini_read_real("Talents","Attuned to the Void",false);
global.talAttVCDR = ini_read_real("Talents","Attuned to the Void CDR",1);
global.talAttVInterval = ini_read_real("Talents","Attuned to the Void Interval",2);

global.talHoS = ini_read_real("Talents","Hymn of Sorrow",false);
global.talHoSins = ini_read_real("Talents","Hymn of Sorrow Insanity",44);
global.talHoSpause = ini_read_real("Talents","Hymn of Sorrow Drain Pause",true);
global.talHoSCD = ini_read_real("Talents","Hymn of Sorrow Cooldown",40);

global.talVEntropy = ini_read_real("Talents","Void Entropy",false);
global.talVEntropyCD = ini_read_real("Talents","Void Entropy CD",18);
global.talVEntropyCDR = ini_read_real("Talents","Void Entropy CDR",2);
global.talVEntropyins = ini_read_real("Talents","Void Entropy Insanity",0);
global.talVEntropyDur = ini_read_real("Talents","Void Entropy Duration",12);

global.talVoidlord = ini_read_real("Talents","Voidlord",false);
global.talVoidlordDmg = ini_read_real("Talents","Voidlord Damage",12);
global.talVoidlordDur = ini_read_real("Talents","Voidlord Duration",6);

global.talFocusedInsanity = ini_read_real("Talents","Focused Insanity",false);
global.talFocusedInsanityDmg = ini_read_real("Talents","Focused Insanity Damage",10);
global.talFocusedInsanityPeak = ini_read_real("Talents","Focused Insanity Peak",75);

global.talAllure = ini_read_real("Talents","Allure",false);
global.talAllureDmg = ini_read_real("Talents","Allure Damage",20);
global.talAllureDur = ini_read_real("Talents","Allure Duration",20);

//damage
global.dmgMindBlast = ini_read_real("Damage","Mind Blast Damage",8000);
global.dmgSWDeath = ini_read_real("Damage","SW: Death Damage",13500);
global.dmgVBolt = ini_read_real("Damage","Void Bolt Damage",6000);
global.dmgVEruption = ini_read_real("Damage","Void Eruption Damage",10000);
global.dmgMindFlay = ini_read_real("Damage","Mind Flay Damage",10000);
global.dmgMindSear = ini_read_real("Damage","Mind Sear Damage",4000);
global.dmgSWPain = ini_read_real("Damage","SW: Pain Damage",9000);
global.dmgInitSWPain = ini_read_real("Damage","SW: Pain initial Damage", 1000);
global.dmgVT = ini_read_real("Damage","Vampiric Touch Damage",15000);
global.dmgCttV = ini_read_real("Damage","Call to the Void Damage", 5000);

global.dmgDarkVoid = ini_read_real("Damage","Dark Void Damage", 6000);
global.dmgHoS = ini_read_real("Damage","Hymn of Sorrow Damage", 20000);
global.dmgVoidEntropy = ini_read_real("Damage","Void Entropy Damage", 10000);

global.dmgMadness = ini_read_real("Damage","Madness Damage", 20);
global.dmgVBMadness = ini_read_real("Damage","Madness VB Damage", 150);
global.maxMastery = ini_read_real("Damage","Max Mastery", 8);
global.baseCrit = ini_read_real("Damage","Crit Chance", 30);
global.maxHP = ini_read_real("Damage","Max HP", 10000000);

ini_close();
