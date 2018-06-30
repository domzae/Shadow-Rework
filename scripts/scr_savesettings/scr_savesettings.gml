//scr_savesettings(file)

var file = argument[0]

if file_exists(working_directory + file)
{
	file_delete(working_directory + file)
}
ini_open(working_directory + file);
//general
ini_write_real("General","Base Drain",global.basedrain);
ini_write_real("General","Drain",global.drain);
ini_write_real("General","Base Haste",global.basehaste);
ini_write_real("General","Voidform Haste",global.vfhaste);
ini_write_real("General","Madness Haste",global.madnesshaste);
ini_write_real("General","Current Haste",global.haste);

ini_write_real("General","Mind Sear Targets",global.aoeTargets);
ini_write_real("General","Call to the Void RPPM",global.CttVrppm);

ini_write_real("Madness","Madness Duration",global.madnessTime);
ini_write_real("Madness","Surrender Duration",global.surrenderTime);
ini_write_real("Madness","Satiated %",global.satiatedModifier);
ini_write_real("Madness","Satiated Duration",global.satiatedTime);
ini_write_real("Madness","Surrender Exit Insanity",global.surrenderExitIns);
ini_write_real("Madness","Madness Haste Decay",global.madnessHasteDecay);

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
ini_write_real("Insanity","Call to the Void Insanity",global.insgainCttV);

//other
ini_write_real("Other","Multiple Talents per Row",global.multiTal);
ini_write_real("Other","Shadow Word: Pain Duration",global.durSWPain);
ini_write_real("Other","Vampiric Touch Duration",global.durVT);
ini_write_real("Other","Spell Queue",global.spellQueue);

//talents
ini_write_real("Talents","Fortress of the Mind",global.talFotM);
ini_write_real("Talents","FotM Insanity Eq",global.talFotMins);

ini_write_real("Talents","Mind Shatter",global.talMindShatter);
ini_write_real("Talents","Mind Shatter Charges",global.talMindShatterCharges);

ini_write_real("Talents","Focus the Void",global.talFocustheVoid);
ini_write_real("Talents","Focus the Void CD",global.talFocustheVoidCD);
ini_write_real("Talents","Focus the Void Duration",global.talFocustheVoidDur);
//ini_write_real("Talents","Pain Discharge",global.talPainDischarge);
//ini_write_real("Talents","Pain Discharge Insanity",global.talPainDischargeins);

ini_write_real("Talents","Blackout",global.talBlackout);
ini_write_real("Talents","Blackout DoT increase",global.talBlackoutDotInc);

ini_write_real("Talents","Misery",global.talMisery);

ini_write_real("Talents","Dark Void",global.talDarkVoid);
ini_write_real("Talents","Dark Void Insanity",global.talDarkVoidins);

ini_write_real("Talents","Attuned to the Void",global.talAttV);
ini_write_real("Talents","Attuned to the Void CDR",global.talAttVCDR);

ini_write_real("Talents","Hymn of Sorrow",global.talHoS);
ini_write_real("Talents","Hymn of Sorrow Insanity",global.talHoSins);
ini_write_real("Talents","Hymn of Sorrow Cooldown",global.talHoSCD);

ini_write_real("Talents","Void Entropy",global.talVEntropy);
ini_write_real("Talents","Void Entropy CD",global.talVEntropyCD);
ini_write_real("Talents","Void Entropy CDR",global.talVEntropyCDR);
ini_write_real("Talents","Void Entropy Insanity",global.talVEntropyins);
ini_write_real("Talents","Void Entropy Duration",global.talVEntropyDur);

ini_write_real("Talents","Voidlord",global.talVoidlord);
ini_write_real("Talents","Voidlord Damage",global.talVoidlordDmg);
ini_write_real("Talents","Voidlord Duration",global.talVoidlordDur);

ini_write_real("Talents","Focused Insanity",global.talFocusedInsanity);
ini_write_real("Talents","Focused Insanity Damage",global.talFocusedInsanityDmg);
ini_write_real("Talents","Focused Insanity Peak",global.talFocusedInsanityPeak);

ini_write_real("Talents","Allure",global.talAllure);
ini_write_real("Talents","Allure Damage",global.talAllureDmg);
ini_write_real("Talents","Allure Duration",global.talAllureDur);

//damage
ini_write_real("Damage","Mind Blast Damage",global.dmgMindBlast);
ini_write_real("Damage","SW: Death Damage",global.dmgSWDeath);
ini_write_real("Damage","Void Bolt Damage",global.dmgVBolt);
ini_write_real("Damage","Void Eruption Damage",global.dmgVEruption);
ini_write_real("Damage","Mind Flay Damage",global.dmgMindFlay);
ini_write_real("Damage","Mind Sear Damage",global.dmgMindSear);
ini_write_real("Damage","SW: Pain Damage",global.dmgSWPain);
ini_write_real("Damage","SW: Pain initial Damage", global.dmgInitSWPain);
ini_write_real("Damage","Vampiric Touch Damage",global.dmgVT);
ini_write_real("Damage","Call to the Void Damage", global.dmgCttV);

ini_write_real("Damage","Dark Void Damage", global.dmgDarkVoid);
ini_write_real("Damage","Hymn of Sorrow Damage", global.dmgHoS);
ini_write_real("Damage","Void Entropy Damage", global.dmgVoidEntropy);

ini_write_real("Damage","Madness Damage", global.dmgMadness);
ini_write_real("Damage","Madness VB Damage", global.dmgVBMadness);
ini_write_real("Damage","Max Mastery", global.maxMastery);
ini_write_real("Damage","Crit Chance", global.baseCrit);
ini_write_real("Damage","Max HP", global.maxHP);

ini_close();