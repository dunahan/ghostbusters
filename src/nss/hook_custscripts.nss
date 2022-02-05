// Insert custom Global Area Scripts
string OnAreaEnter      = "";
string OnAreaExit       = "";
string OnAreaHeartbeat  = "";
string OnAreaUserDef    = "";

// Insert custom Global Area Of Effect Scripts
string OnAOEHeartbeat   = "";
string OnAOEObjectEnter = "";
string OnAOEObjectExit  = "";
string OnAOEUserDef     = "";

// Insert custom Global Creature Scripts
string OnCreBlocked     = "x2_def_onblocked";
string OnCreDamaged     = "x2_def_ondamage";
string OnCreDeath       = "x2_def_ondeath";
string OnCreDialogue    = "";
string OnCreDisturbed   = "x2_def_ondisturb";
string OnCreCombRoundEd = "x2_def_endcombat";
string OnCreHeartbeat   = "x2_def_heartbeat";
string OnCrePhysAttackd = "x2_def_attacked";
string OnCrePerception  = "x2_def_percept";
string OnCreRested      = "x2_def_rested";
string OnCreSpawn       = "x2_def_spawn";
string OnCreSpellCastAt = "x2_def_spellcast";
string OnCreUserDefined = "x2_def_userdef";

string OnDoorClicked    = "";
string OnDoorClosed     = "";
string OnDoorDamaged    = "";
string OnDoorDeath      = "";
string OnDoorDialogue   = "";
string OnDoorTrapDisarm = "";
string OnDoorFailToOpen = "";
string OnDoorHeartbeat  = "";
string OnDoorLock       = "";
string OnDoorPhyAttackd = "";
string OnDoorOpen       = "";
string OnDoorSpellCast  = "";
string OnDoorTrapTriggd = "";
string OnDoorUnlock     = "";
string OnDoorUserDef    = "";

string GetGlobalScript(object oModule, int nEventScript)
{
  return GetLocalString(oModule, IntToString(nEventScript));
}

int SetScript(object oModule, int nEventScript, string sScript="")
{
  SetLocalString(oModule, IntToString(nEventScript), OnAreaEnter);
  if (GetLocalString(oModule, IntToString(nEventScript)) != "" )
    return TRUE;
  return FALSE;
}

int LoadGlobalScriptSetToModule(object oModule)
{
  int b;

// Set custom Area Scrips
  b = b + SetScript(oModule, EVENT_SCRIPT_AREA_ON_ENTER, OnAreaEnter);
  b = b + SetScript(oModule, EVENT_SCRIPT_AREA_ON_EXIT, OnAreaExit);
  b = b + SetScript(oModule, EVENT_SCRIPT_AREA_ON_HEARTBEAT, OnAreaHeartbeat);
  b = b + SetScript(oModule, EVENT_SCRIPT_AREA_ON_USER_DEFINED_EVENT, OnAreaUserDef);

// Set custom Area Of Effect Scripts
  b = b + SetScript(oModule, EVENT_SCRIPT_AREAOFEFFECT_ON_HEARTBEAT, OnAOEHeartbeat);
  b = b + SetScript(oModule, EVENT_SCRIPT_AREAOFEFFECT_ON_OBJECT_ENTER, OnAOEObjectEnter);
  b = b + SetScript(oModule, EVENT_SCRIPT_AREAOFEFFECT_ON_OBJECT_EXIT, OnAOEObjectExit);
  b = b + SetScript(oModule, EVENT_SCRIPT_AREAOFEFFECT_ON_USER_DEFINED_EVENT, OnAOEUserDef);

// Set custom Creature Scripts
  b = b + SetScript(oModule, EVENT_SCRIPT_CREATURE_ON_BLOCKED_BY_DOOR, OnCreBlocked);
  b = b + SetScript(oModule, EVENT_SCRIPT_CREATURE_ON_DAMAGED, OnCreDamaged);
  b = b + SetScript(oModule, EVENT_SCRIPT_CREATURE_ON_DEATH, OnCreDeath);
  b = b + SetScript(oModule, EVENT_SCRIPT_CREATURE_ON_DIALOGUE, OnCreDialogue);
  b = b + SetScript(oModule, EVENT_SCRIPT_CREATURE_ON_DISTURBED, OnCreDisturbed);
  b = b + SetScript(oModule, EVENT_SCRIPT_CREATURE_ON_END_COMBATROUND, OnCreCombRoundEd);
  b = b + SetScript(oModule, EVENT_SCRIPT_CREATURE_ON_HEARTBEAT, OnCreHeartbeat);
  b = b + SetScript(oModule, EVENT_SCRIPT_CREATURE_ON_MELEE_ATTACKED, OnCrePhysAttackd);
  b = b + SetScript(oModule, EVENT_SCRIPT_CREATURE_ON_NOTICE, OnCrePerception);
  b = b + SetScript(oModule, EVENT_SCRIPT_CREATURE_ON_RESTED, OnCreRested);
  b = b + SetScript(oModule, EVENT_SCRIPT_CREATURE_ON_SPAWN_IN, OnCreSpawn);
  b = b + SetScript(oModule, EVENT_SCRIPT_CREATURE_ON_SPELLCASTAT, OnCreSpellCastAt);
  b = b + SetScript(oModule, EVENT_SCRIPT_CREATURE_ON_USER_DEFINED_EVENT, OnCreUserDefined);

// Set custom Creature Scrips
  b = b + SetScript(oModule, EVENT_SCRIPT_CREATURE_ON_USER_DEFINED_EVENT, OnDoorClicked);
  b = b + SetScript(oModule, EVENT_SCRIPT_CREATURE_ON_USER_DEFINED_EVENT, OnDoorClosed);
  b = b + SetScript(oModule, EVENT_SCRIPT_CREATURE_ON_USER_DEFINED_EVENT, OnDoorDamaged);
  b = b + SetScript(oModule, EVENT_SCRIPT_CREATURE_ON_USER_DEFINED_EVENT, OnDoorDeath);
  b = b + SetScript(oModule, EVENT_SCRIPT_CREATURE_ON_USER_DEFINED_EVENT, OnDoorDialogue);
  b = b + SetScript(oModule, EVENT_SCRIPT_CREATURE_ON_USER_DEFINED_EVENT, OnDoorTrapDisarm);
  b = b + SetScript(oModule, EVENT_SCRIPT_CREATURE_ON_USER_DEFINED_EVENT, OnDoorFailToOpen);
  b = b + SetScript(oModule, EVENT_SCRIPT_CREATURE_ON_USER_DEFINED_EVENT, OnDoorHeartbeat);
  b = b + SetScript(oModule, EVENT_SCRIPT_CREATURE_ON_USER_DEFINED_EVENT, OnDoorLock);
  b = b + SetScript(oModule, EVENT_SCRIPT_CREATURE_ON_USER_DEFINED_EVENT, OnDoorPhyAttackd);
  b = b + SetScript(oModule, EVENT_SCRIPT_CREATURE_ON_USER_DEFINED_EVENT, OnDoorOpen);
  b = b + SetScript(oModule, EVENT_SCRIPT_CREATURE_ON_USER_DEFINED_EVENT, OnDoorSpellCast);
  b = b + SetScript(oModule, EVENT_SCRIPT_CREATURE_ON_USER_DEFINED_EVENT, OnDoorTrapTriggd);
  b = b + SetScript(oModule, EVENT_SCRIPT_CREATURE_ON_USER_DEFINED_EVENT, OnDoorUnlock);
  b = b + SetScript(oModule, EVENT_SCRIPT_CREATURE_ON_USER_DEFINED_EVENT, OnDoorUserDef);

/*
  SetLocalString(oModule, "OnEncExhausted",   "");                    if (GetLocalString(oModule, "OnEncExhausted") != "" ) b++;
  SetLocalString(oModule, "OnEncHeartbeat",   "");                    if (GetLocalString(oModule, "OnEncHeartbeat") != "" ) b++;
  SetLocalString(oModule, "OnEncEnter",       "");                    if (GetLocalString(oModule, "OnEncEnter") != "" ) b++;
  SetLocalString(oModule, "OnEncExit",        "");                    if (GetLocalString(oModule, "OnEncExit") != "" ) b++;
  SetLocalString(oModule, "OnEncUserDef",     "");                    if (GetLocalString(oModule, "OnEncUserDef") != "" ) b++;
*/

  SetLocalString(oModule, "OnModAcqireItm",   "x2_mod_def_aqu");      if ( GetLocalString(oModule, "OnModAcqireItm") != "" ) b++;
  SetLocalString(oModule, "OnModActivateItm", "x2_mod_def_act");      if (GetLocalString(oModule, "OnModActivateItm") != "") b++;
  SetLocalString(oModule, "OnModClientEnter", "x3_mod_def_enter");    if (GetLocalString(oModule, "OnModClientEnter") != "") b++;
  SetLocalString(oModule, "OnModClientExit",  "");                    if (GetLocalString(oModule, "OnModClientExit") != "") b++;
  SetLocalString(oModule, "OnModEquipItem",   "x2_mod_def_equ");      if (GetLocalString(oModule, "OnModEquipItem") != "") b++;
  SetLocalString(oModule, "OnModHeartbeat",   "");                    if (GetLocalString(oModule, "OnModHeartbeat") != "") b++;
  SetLocalString(oModule, "OnModUnAcqireItm", "x2_mod_def_unaqu");    if (GetLocalString(oModule, "OnModUnAcqireItm") != "") b++;
  SetLocalString(oModule, "OnModLoad",        "x2_mod_def_load");     if (GetLocalString(oModule, "OnModLoad") != "") b++;
  SetLocalString(oModule, "OnModNui",         "");                    if (GetLocalString(oModule, "OnModNui") != "") b++;
  SetLocalString(oModule, "OnModCancelCutsc", "");                    if (GetLocalString(oModule, "OnModCancelCutsc") != "") b++;
  SetLocalString(oModule, "OnModPlayerChat",  "_mod_player_chat");    if (GetLocalString(oModule, "OnModPlayerChat") != "") b++;
  SetLocalString(oModule, "OnModPlayerDeath", "nw_o0_death");         if (GetLocalString(oModule, "OnModPlayerDeath") != "") b++;
  SetLocalString(oModule, "OnModPlayerDying", "nw_o0_dying");         if (GetLocalString(oModule, "OnModPlayerDying") != "") b++;
  SetLocalString(oModule, "OnModGui",         "");                    if (GetLocalString(oModule, "OnModGui") != "") b++;
  SetLocalString(oModule, "OnModPlayerLvlUp", "");                    if (GetLocalString(oModule, "OnModPlayerLvlUp") != "") b++;
  SetLocalString(oModule, "OnModPlayerRest",  "x2_mod_def_rest");     if (GetLocalString(oModule, "OnModPlayerRest") != "") b++;
  SetLocalString(oModule, "OnModPlayerTargt", "");                    if (GetLocalString(oModule, "OnModPlayerTargt") != "") b++;
  SetLocalString(oModule, "OnModPCTileAct",   "");                    if (GetLocalString(oModule, "OnModPCTileAct") != "") b++;
  SetLocalString(oModule, "OnModPlayerRespa", "nw_o0_respawn");       if (GetLocalString(oModule, "OnModPlayerRespa") != "") b++;
  SetLocalString(oModule, "OnModUnEquipItem", "x2_mod_def_unequ");    if (GetLocalString(oModule, "OnModUnEquipItem") != "") b++;
  SetLocalString(oModule, "OnModUserdefEvnt", "");                    if (GetLocalString(oModule, "OnModUserdefEvnt") != "") b++;

  return b;
}


