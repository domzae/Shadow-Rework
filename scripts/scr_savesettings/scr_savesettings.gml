if file_exists(working_directory + "settings.ini")
{
	file_delete(working_directory + "settings.ini")
}
ini_open(working_directory + "settings.ini");
//general
ini_write_real("General","Base Drain",global.basedrain);
ini_write_real("General","Drain",global.drain);
ini_write_real("General","Base Haste",global.basehaste);
ini_write_real("General","Voidform Haste",global.vfhaste);
ini_write_real("General","Madness Haste",global.madnesshaste);
ini_write_real("General","Current Haste",global.haste);

ini_write_real("General","Mind Sear Targets",global.searTargets);

ini_write_real("Madness","Madness Duration",global.madnessTime);
ini_write_real("Madness","Surrender Duration",global.surrenderTime);
ini_write_real("Madness","Satiated %",global.satiatedModifier);
ini_write_real("Madness","Satiated Duration",global.satiatedTime);

//ability cds
ini_write_real("Cooldowns","Mind Blast CD",global.cdMindBlast);
ini_write_real("Cooldowns","SW: Death CD",global.cdSWDeath);
ini_write_real("Cooldowns","Void Bolt CD",global.cdVBolt);
ini_write_real("Cooldowns","Void Eruption CD",global.cdVEruption);
ini_write_real("Cooldowns","Surrender to Madness CD",global.cdS2M);
ini_write_real("Cooldowns","Void Shared CD",global.cdSharedVoid);

//insanity gains
ini_write_real("Insanity","Mind Blast Insanity",global.insgainMindBlast);
ini_write_real("Insanity","SW: Death Insanity",global.insgainSWDeath);
ini_write_real("Insanity","Void Bolt Insanity",global.insgainVBolt);
ini_write_real("Insanity","Void Eruption Insanity",global.insgainVEruption);
ini_write_real("Insanity","Mind Flay Insanity",global.insgainMindFlay);
ini_write_real("Insanity","Mind Sear Insanity",global.insgainMindSear);
ini_write_real("Insanity","SW: Pain Insanity",global.insgainSWPain);
ini_write_real("Insanity","Vampiric Touch Insanity",global.insgainVT);

ini_close();