const int HOOK_USE_GLOBAL_DEFINED_SCRIPTSET = TRUE;

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

// Insert custom Global Door Scripts
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

// Insert custom Global Encounter Scripts
string OnEncExhausted   = "";
string OnEncHeartbeat   = "";
string OnEncEnter       = "";
string OnEncExit        = "";
string OnEncUserDef     = "";

// Insert custom Global Module Scripts
string OnModAcqireItm   = "x2_mod_def_aqu";
string OnModActivateItm = "x2_mod_def_act";
string OnModClientEnter = "x3_mod_def_enter";
string OnModClientExit  = "";
string OnModEquipItem   = "x2_mod_def_equ";
string OnModHeartbeat   = "";
string OnModUnAcqireItm = "x2_mod_def_unaqu";
string OnModLoad        = "hook_script";    //"x2_mod_def_load";    // doesn't matter anyway...
string OnModNui         = "";
string OnModCancelCutsc = "";
string OnModPlayerChat  = "_mod_player_chat";
string OnModPlayerDeath = "nw_o0_death";
string OnModPlayerDying = "nw_o0_dying";
string OnModGui         = "";
string OnModPlayerLvlUp = "";
string OnModPlayerRest  = "x2_mod_def_rest";
string OnModPlayerTargt = "";
string OnModPCTileAct   = "";
string OnModPlayerRespa = "nw_o0_respawn";
string OnModUnEquipItem = "x2_mod_def_unequ";
string OnModUserdefEvnt = "";

// Insert custom Global Placeable Scripts
string OnPlcClosed      = "";
string OnPlcDamaged     = "";
string OnPlcDeath       = "";
string OnPlcDialogue    = "";
string OnPlcTrapDisarm  = "";
string OnPlcHeartbeat   = "";
string OnPlcDisturbed   = "";
string OnPlcLeftClick   = "";
string OnPlcLock        = "";
string OnPlcPhysAttackd = "";
string OnPlcOpen        = "";
string OnPlcSpellCastAt = "";
string OnPlcTrapTrigg   = "";
string OnPlcUnlock      = "";
string OnPlcUsed        = "";
string OnPlcUserDef     = "";

// Insert custom Global Store Scripts
string OnStoreClose     = "";
string OnStoreOpen      = "";

// Insert custom Global Trigger Scripts
string OnTriggerClicked = "";
string OnTriggerTrapDis = "";
string OnTriggerHeartb  = "";
string OnTriggerEnter   = "";
string OnTriggerExit    = "";
string OnTriggerTrapTrg = "";
string OnTriggerUserDef = "";

#include "debug"

string GetGlobalScript(object oModule, int nEventScript)
{
  return GetLocalString(oModule, IntToString(nEventScript));
}

int SetScript(object oModule, int nEventScript, string sScript="")
{
  SetLocalString(oModule, IntToString(nEventScript), sScript);
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
  b = b + SetScript(oModule, EVENT_SCRIPT_DOOR_ON_CLICKED, OnDoorClicked);
  b = b + SetScript(oModule, EVENT_SCRIPT_DOOR_ON_CLOSE, OnDoorClosed);
  b = b + SetScript(oModule, EVENT_SCRIPT_DOOR_ON_DAMAGE, OnDoorDamaged);
  b = b + SetScript(oModule, EVENT_SCRIPT_DOOR_ON_DEATH, OnDoorDeath);
  b = b + SetScript(oModule, EVENT_SCRIPT_DOOR_ON_DIALOGUE, OnDoorDialogue);
  b = b + SetScript(oModule, EVENT_SCRIPT_DOOR_ON_DISARM, OnDoorTrapDisarm);
  b = b + SetScript(oModule, EVENT_SCRIPT_DOOR_ON_FAIL_TO_OPEN, OnDoorFailToOpen);
  b = b + SetScript(oModule, EVENT_SCRIPT_DOOR_ON_HEARTBEAT, OnDoorHeartbeat);
  b = b + SetScript(oModule, EVENT_SCRIPT_DOOR_ON_LOCK, OnDoorLock);
  b = b + SetScript(oModule, EVENT_SCRIPT_DOOR_ON_MELEE_ATTACKED, OnDoorPhyAttackd);
  b = b + SetScript(oModule, EVENT_SCRIPT_DOOR_ON_OPEN, OnDoorOpen);
  b = b + SetScript(oModule, EVENT_SCRIPT_DOOR_ON_SPELLCASTAT, OnDoorSpellCast);
  b = b + SetScript(oModule, EVENT_SCRIPT_DOOR_ON_TRAPTRIGGERED, OnDoorTrapTriggd);
  b = b + SetScript(oModule, EVENT_SCRIPT_DOOR_ON_UNLOCK, OnDoorUnlock);
  b = b + SetScript(oModule, EVENT_SCRIPT_DOOR_ON_USERDEFINED, OnDoorUserDef);

// Set custom Encounter Scripts
  b = b + SetScript(oModule, EVENT_SCRIPT_ENCOUNTER_ON_ENCOUNTER_EXHAUSTED, OnEncExhausted);
  b = b + SetScript(oModule, EVENT_SCRIPT_ENCOUNTER_ON_HEARTBEAT, OnEncHeartbeat);
  b = b + SetScript(oModule, EVENT_SCRIPT_ENCOUNTER_ON_OBJECT_ENTER, OnEncEnter);
  b = b + SetScript(oModule, EVENT_SCRIPT_ENCOUNTER_ON_OBJECT_EXIT, OnEncExit);
  b = b + SetScript(oModule, EVENT_SCRIPT_ENCOUNTER_ON_USER_DEFINED_EVENT, OnEncUserDef);

// Set custom Module Scripts
  b = b + SetScript(oModule, EVENT_SCRIPT_MODULE_ON_ACQUIRE_ITEM, OnModAcqireItm);
  b = b + SetScript(oModule, EVENT_SCRIPT_MODULE_ON_ACTIVATE_ITEM, OnModAcqireItm);
  b = b + SetScript(oModule, EVENT_SCRIPT_MODULE_ON_CLIENT_ENTER, OnModClientEnter);
  b = b + SetScript(oModule, EVENT_SCRIPT_MODULE_ON_CLIENT_EXIT, OnModClientExit);
  b = b + SetScript(oModule, EVENT_SCRIPT_MODULE_ON_EQUIP_ITEM, OnModEquipItem);
  b = b + SetScript(oModule, EVENT_SCRIPT_MODULE_ON_HEARTBEAT, OnModHeartbeat);
  b = b + SetScript(oModule, EVENT_SCRIPT_MODULE_ON_LOSE_ITEM, OnModUnAcqireItm);
  b = b + SetScript(oModule, EVENT_SCRIPT_MODULE_ON_MODULE_LOAD, OnModLoad);
  b = b + SetScript(oModule, EVENT_SCRIPT_MODULE_ON_NUI_EVENT, OnModNui);
  b = b + SetScript(oModule, EVENT_SCRIPT_MODULE_ON_PLAYER_CANCEL_CUTSCENE, OnModCancelCutsc);
  b = b + SetScript(oModule, EVENT_SCRIPT_MODULE_ON_PLAYER_CHAT, OnModPlayerChat);
  b = b + SetScript(oModule, EVENT_SCRIPT_MODULE_ON_PLAYER_DEATH, OnModPlayerDeath);
  b = b + SetScript(oModule, EVENT_SCRIPT_MODULE_ON_PLAYER_DYING, OnModPlayerDying);
  b = b + SetScript(oModule, EVENT_SCRIPT_MODULE_ON_PLAYER_GUIEVENT, OnModGui);
  b = b + SetScript(oModule, EVENT_SCRIPT_MODULE_ON_PLAYER_LEVEL_UP, OnModPlayerLvlUp);
  b = b + SetScript(oModule, EVENT_SCRIPT_MODULE_ON_PLAYER_REST, OnModPlayerRest);
  b = b + SetScript(oModule, EVENT_SCRIPT_MODULE_ON_PLAYER_TARGET, OnModPlayerTargt);
  b = b + SetScript(oModule, EVENT_SCRIPT_MODULE_ON_PLAYER_TILE_ACTION, OnModPCTileAct);
  b = b + SetScript(oModule, EVENT_SCRIPT_MODULE_ON_RESPAWN_BUTTON_PRESSED, OnModPlayerRespa);
  b = b + SetScript(oModule, EVENT_SCRIPT_MODULE_ON_UNEQUIP_ITEM, OnModUnEquipItem);
  b = b + SetScript(oModule, EVENT_SCRIPT_MODULE_ON_USER_DEFINED_EVENT, OnModUserdefEvnt);

  b = b + SetScript(oModule, EVENT_SCRIPT_PLACEABLE_ON_CLOSED, OnPlcClosed);
  b = b + SetScript(oModule, EVENT_SCRIPT_PLACEABLE_ON_DAMAGED, OnPlcDamaged);
  b = b + SetScript(oModule, EVENT_SCRIPT_PLACEABLE_ON_DEATH, OnPlcDeath);
  b = b + SetScript(oModule, EVENT_SCRIPT_PLACEABLE_ON_DIALOGUE, OnPlcDialogue);
  b = b + SetScript(oModule, EVENT_SCRIPT_PLACEABLE_ON_DISARM, OnPlcTrapDisarm);
  b = b + SetScript(oModule, EVENT_SCRIPT_PLACEABLE_ON_HEARTBEAT, OnPlcHeartbeat);
  b = b + SetScript(oModule, EVENT_SCRIPT_PLACEABLE_ON_INVENTORYDISTURBED, OnPlcDisturbed);
  b = b + SetScript(oModule, EVENT_SCRIPT_PLACEABLE_ON_LEFT_CLICK, OnPlcLeftClick);
  b = b + SetScript(oModule, EVENT_SCRIPT_PLACEABLE_ON_LOCK, OnPlcLock);
  b = b + SetScript(oModule, EVENT_SCRIPT_PLACEABLE_ON_MELEEATTACKED, OnPlcPhysAttackd);
  b = b + SetScript(oModule, EVENT_SCRIPT_PLACEABLE_ON_OPEN, OnPlcOpen);
  b = b + SetScript(oModule, EVENT_SCRIPT_PLACEABLE_ON_SPELLCASTAT, OnPlcSpellCastAt);
  b = b + SetScript(oModule, EVENT_SCRIPT_PLACEABLE_ON_TRAPTRIGGERED, OnPlcTrapTrigg);
  b = b + SetScript(oModule, EVENT_SCRIPT_PLACEABLE_ON_UNLOCK, OnPlcUnlock);
  b = b + SetScript(oModule, EVENT_SCRIPT_PLACEABLE_ON_USED, OnPlcUsed);
  b = b + SetScript(oModule, EVENT_SCRIPT_PLACEABLE_ON_USER_DEFINED_EVENT, OnPlcUserDef);

  b = b + SetScript(oModule, EVENT_SCRIPT_STORE_ON_CLOSE, OnStoreClose);
  b = b + SetScript(oModule, EVENT_SCRIPT_STORE_ON_OPEN, OnStoreOpen);

  b = b + SetScript(oModule, EVENT_SCRIPT_TRIGGER_ON_CLICKED, OnTriggerClicked);
  b = b + SetScript(oModule, EVENT_SCRIPT_TRIGGER_ON_DISARMED, OnTriggerTrapDis);
  b = b + SetScript(oModule, EVENT_SCRIPT_TRIGGER_ON_HEARTBEAT, OnTriggerHeartb);
  b = b + SetScript(oModule, EVENT_SCRIPT_TRIGGER_ON_OBJECT_ENTER, OnTriggerEnter);
  b = b + SetScript(oModule, EVENT_SCRIPT_TRIGGER_ON_OBJECT_EXIT, OnTriggerExit);
  b = b + SetScript(oModule, EVENT_SCRIPT_TRIGGER_ON_TRAPTRIGGERED, OnTriggerTrapTrg);
  b = b + SetScript(oModule, EVENT_SCRIPT_TRIGGER_ON_USER_DEFINED_EVENT, OnTriggerUserDef);

  return b;
}

void RunScript(int nEventScriptType, object oTarget=OBJECT_SELF)
{
  string sScript = GetGlobalScript(GetModule(), nEventScriptType);
  Debug("Execute script "+sScript+" on "+DecodeConstant(GetObjectType(oTarget)), STRING_COLOR_GREEN);

  if (sScript != "")
    ExecuteScript(sScript, oTarget);
}

int SetHookScriptOnModuleLoad()
{
  int nEvent, b = 0; string sScript;
  object oObject = GetModule();

  for (nEvent = 1+EVENT_SCRIPT_MODULE_ON_HEARTBEAT; nEvent <= EVENT_SCRIPT_MODULE_ON_NUI_EVENT; nEvent++)
  {
    sScript = GetEventScript(oObject, nEvent);
    if (sScript != "")
    {
      SetLocalString(oObject, "MODULE!OldEventScript!" + IntToString(nEvent), sScript);
      b++;
    }
    SetEventScript(oObject, nEvent, "hook_script");
  }

  oObject = GetFirstArea();
  while (GetIsObjectValid(oObject))
  {
    for (nEvent = 1+EVENT_SCRIPT_AREA_ON_HEARTBEAT; nEvent <= EVENT_SCRIPT_AREA_ON_EXIT; nEvent++)
    {
      sScript = GetEventScript(oObject, nEvent);
      if (sScript != "")
      {
        SetLocalString(oObject, "AREA!OldEventScript!" + IntToString(nEvent), sScript);
        b++;
      }
      SetEventScript(oObject, nEvent, "hook_script");
    }
    oObject = GetNextArea();
  }

  return b;
}
