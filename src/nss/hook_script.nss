#include "debug"


const int EVENT_TYPE_MODULE = 3;
const int EVENT_TYPE_AREA = 4;
const int EVENT_TYPE_CREATURE = 5;
const int EVENT_TYPE_TRIGGER = 7;
const int EVENT_TYPE_PLACEABLE = 9;
const int EVENT_TYPE_DOOR = 10;
const int EVENT_TYPE_AREAOFEFFECT = 11;
const int EVENT_TYPE_ENCOUNTER = 13;
const int EVENT_TYPE_STORE = 14;


int SetHookScriptOnModuleLoad();
int LoadScriptSet();
void RunScript(string sScript, object oTarget);


void main()
{
  object oObject;
  int nCurrentEvent = GetCurrentlyRunningEvent();                               Debug("Current Event: "+IntToString(nCurrentEvent));

  switch (nCurrentEvent / 1000)
  {
    case EVENT_TYPE_AREA:
    {
      switch (nCurrentEvent)
      {
        case EVENT_SCRIPT_AREA_ON_ENTER:
          RunScript(GetLocalString(oObject, "OnAreaEnter"), oObject);       //""
        break;
        
        case EVENT_SCRIPT_AREA_ON_EXIT:
          RunScript(GetLocalString(oObject, "OnAreaExit"), oObject);        //""
        break;
        
        case EVENT_SCRIPT_AREA_ON_HEARTBEAT:
          RunScript(GetLocalString(oObject, "OnAreaHeartbeat"), oObject);   //""
        break;
        
        case EVENT_SCRIPT_AREA_ON_USER_DEFINED_EVENT:
          RunScript(GetLocalString(oObject, "OnAreaUserDef"), oObject);     //""
        break;
      }
    }
    break;

    case EVENT_TYPE_AREAOFEFFECT:
    {
      switch (nCurrentEvent)
      {
        case EVENT_SCRIPT_AREAOFEFFECT_ON_HEARTBEAT:
          RunScript(GetLocalString(oObject, "OnAOEHeartbeat"), oObject);    //""
        break;
        
        case EVENT_SCRIPT_AREAOFEFFECT_ON_OBJECT_ENTER:
          RunScript(GetLocalString(oObject, "OnAOEObjectEnter"), oObject);  //""
        break;
        
        case EVENT_SCRIPT_AREAOFEFFECT_ON_OBJECT_EXIT:
          RunScript(GetLocalString(oObject, "OnAOEObjectExit"), oObject);   //""
        break;
        
        case EVENT_SCRIPT_AREAOFEFFECT_ON_USER_DEFINED_EVENT:
          RunScript(GetLocalString(oObject, "OnAOEUserDef"), oObject);      //""
        break;
      }
    }
    break;

    case EVENT_TYPE_CREATURE:
    {
      switch (nCurrentEvent)
      {
        case EVENT_SCRIPT_CREATURE_ON_BLOCKED_BY_DOOR:
          RunScript(GetLocalString(oObject, "OnCreBlocked"), oObject);      //""
        break;
        
        case EVENT_SCRIPT_CREATURE_ON_DAMAGED:
          RunScript(GetLocalString(oObject, "OnCreDamaged"), oObject);      //""
        break;
        
        case EVENT_SCRIPT_CREATURE_ON_DEATH:
          RunScript(GetLocalString(oObject, "OnCreDeath"), oObject);        //""
        break;
        
        case EVENT_SCRIPT_CREATURE_ON_DIALOGUE:
          RunScript(GetLocalString(oObject, "OnCreDialogue"), oObject);     //""
        break;
        
        case EVENT_SCRIPT_CREATURE_ON_DISTURBED:
          RunScript(GetLocalString(oObject, "OnCreDisturbed"), oObject);    //""
        break;
        
        case EVENT_SCRIPT_CREATURE_ON_END_COMBATROUND:
          RunScript(GetLocalString(oObject, "OnCreCombRoundEd"), oObject);  //""
        break;
        
        case EVENT_SCRIPT_CREATURE_ON_HEARTBEAT:
          RunScript(GetLocalString(oObject, "OnCreHeartbeat"), oObject);    //""
        break;
        
        case EVENT_SCRIPT_CREATURE_ON_MELEE_ATTACKED:
          RunScript(GetLocalString(oObject, "OnCrePhysAttackd"), oObject);  //""
        break;
        
        case EVENT_SCRIPT_CREATURE_ON_NOTICE:
          RunScript(GetLocalString(oObject, "OnCrePerception"), oObject);   //""
        break;
        
        case EVENT_SCRIPT_CREATURE_ON_RESTED:
          RunScript(GetLocalString(oObject, "OnCreRested"), oObject);       //""
        break;
        
        case EVENT_SCRIPT_CREATURE_ON_SPAWN_IN:
          RunScript(GetLocalString(oObject, "OnCreSpawn"), oObject);        //""
        break;
        
        case EVENT_SCRIPT_CREATURE_ON_SPELLCASTAT:
          RunScript(GetLocalString(oObject, "OnCreSpellCastAt"), oObject);  //""
        break;
        
        case EVENT_SCRIPT_CREATURE_ON_USER_DEFINED_EVENT:
          RunScript(GetLocalString(oObject, "OnCreUserDefined"), oObject);  //""
        break;
      }
    }
    break;

    case EVENT_TYPE_DOOR:
    {
      switch (nCurrentEvent)
      {
        case EVENT_SCRIPT_DOOR_ON_CLICKED:
          RunScript(GetLocalString(oObject, "OnDoorClicked"), oObject);     //""
        break;
        
        case EVENT_SCRIPT_DOOR_ON_CLOSE:
          RunScript(GetLocalString(oObject, "OnDoorClosed"), oObject);      //""
        break;
        
        case EVENT_SCRIPT_DOOR_ON_DAMAGE:
          RunScript(GetLocalString(oObject, "OnDoorDamaged"), oObject);     //""
        break;
        
        case EVENT_SCRIPT_DOOR_ON_DEATH:
          RunScript(GetLocalString(oObject, "OnDoorDeath"), oObject);       //""
        break;
        
        case EVENT_SCRIPT_DOOR_ON_DIALOGUE:
          RunScript(GetLocalString(oObject, "OnDoorDialogue"), oObject);    //""
        break;
        
        case EVENT_SCRIPT_DOOR_ON_DISARM:
          RunScript(GetLocalString(oObject, "OnDoorTrapDisarm"), oObject);  //""
        break;
        
        case EVENT_SCRIPT_DOOR_ON_FAIL_TO_OPEN:
          RunScript(GetLocalString(oObject, "OnDoorFailToOpen"), oObject);  //""
        break;
        
        case EVENT_SCRIPT_DOOR_ON_HEARTBEAT:
          RunScript(GetLocalString(oObject, "OnDoorHeartbeat"), oObject);   //""
        break;
        
        case EVENT_SCRIPT_DOOR_ON_LOCK:
          RunScript(GetLocalString(oObject, "OnDoorLock"), oObject);        //""
        break;
        
        case EVENT_SCRIPT_DOOR_ON_MELEE_ATTACKED:
          RunScript(GetLocalString(oObject, "OnDoorPhyAttackd"), oObject);  //""
        break;
        
        case EVENT_SCRIPT_DOOR_ON_OPEN:
          RunScript(GetLocalString(oObject, "OnDoorOpen"), oObject);        //""
        break;
        
        case EVENT_SCRIPT_DOOR_ON_SPELLCASTAT:
          RunScript(GetLocalString(oObject, "OnDoorSpellCast"), oObject);   //""
        break;
        
        case EVENT_SCRIPT_DOOR_ON_TRAPTRIGGERED:
          RunScript(GetLocalString(oObject, "OnDoorTrapTriggd"), oObject);  //""
        break;
        
        case EVENT_SCRIPT_DOOR_ON_UNLOCK:
          RunScript(GetLocalString(oObject, "OnDoorUnlock"), oObject);      //""
        break;
        
        case EVENT_SCRIPT_DOOR_ON_USERDEFINED:
          RunScript(GetLocalString(oObject, "OnDoorUserDef"), oObject);     //""
        break;
      }
    }
    break;

    case EVENT_TYPE_ENCOUNTER:
    {
      switch (nCurrentEvent)
      {
        case EVENT_SCRIPT_ENCOUNTER_ON_ENCOUNTER_EXHAUSTED:
          RunScript(GetLocalString(oObject, "OnEncExhausted"), oObject);    //""
        break;
        
        case EVENT_SCRIPT_ENCOUNTER_ON_HEARTBEAT:
          RunScript(GetLocalString(oObject, "OnEncHeartbeat"), oObject);    //""
        break;
        
        case EVENT_SCRIPT_ENCOUNTER_ON_OBJECT_ENTER:
          RunScript(GetLocalString(oObject, "OnEncEnter"), oObject);        //""
        break;
        
        case EVENT_SCRIPT_ENCOUNTER_ON_OBJECT_EXIT:
          RunScript(GetLocalString(oObject, "OnEncExit"), oObject);         //""
        break;
        
        case EVENT_SCRIPT_ENCOUNTER_ON_USER_DEFINED_EVENT:
          RunScript(GetLocalString(oObject, "OnEncUserDef"), oObject);      //""
        break;
      }
    }
    break;

    case EVENT_TYPE_MODULE:
    {
      switch (nCurrentEvent)
      {
        oObject = GetModule();
        
        case EVENT_SCRIPT_MODULE_ON_ACQUIRE_ITEM:
          RunScript(GetLocalString(oObject, "OnModAcqireItm"), oObject);    //"x2_mod_def_aqu"
        break;
        
        case EVENT_SCRIPT_MODULE_ON_ACTIVATE_ITEM:
          RunScript(GetLocalString(oObject, "OnModActivateItm"), oObject);  //"x2_mod_def_act"
        break;
        
        case EVENT_SCRIPT_MODULE_ON_CLIENT_ENTER:
          RunScript(GetLocalString(oObject, "OnModClientEnter"), oObject);  //"x3_mod_def_enter"
        break;
        
        case EVENT_SCRIPT_MODULE_ON_CLIENT_EXIT:
          RunScript(GetLocalString(oObject, "OnModClientExit"), oObject);   //""
        break;
        
        case EVENT_SCRIPT_MODULE_ON_EQUIP_ITEM:
          RunScript(GetLocalString(oObject, "OnModEquipItem"), oObject);    //"x2_mod_def_equ"
        break;
        
        case EVENT_SCRIPT_MODULE_ON_HEARTBEAT:
          RunScript(GetLocalString(oObject, "OnModHeartbeat"), oObject);    //""
        break;
        
        case EVENT_SCRIPT_MODULE_ON_LOSE_ITEM:
          RunScript(GetLocalString(oObject, "OnModUnAcqireItm"), oObject);  //"x2_mod_def_unaqu"
        break;
        
        case EVENT_SCRIPT_MODULE_ON_MODULE_LOAD:
          RunScript(GetLocalString(oObject, "OnModLoad"), oObject);         //"x2_mod_def_load"
        break;
        
        case EVENT_SCRIPT_MODULE_ON_NUI_EVENT:
          RunScript(GetLocalString(oObject, "OnModNui"), oObject);          //""
        break;
        
        case EVENT_SCRIPT_MODULE_ON_PLAYER_CANCEL_CUTSCENE:
          RunScript(GetLocalString(oObject, "OnModCancelCutsc"), oObject);  //""
        break;
        
        case EVENT_SCRIPT_MODULE_ON_PLAYER_CHAT:
          RunScript(GetLocalString(oObject, "OnModPlayerChat"), oObject);   //""
        break;
        
        case EVENT_SCRIPT_MODULE_ON_PLAYER_DEATH:
          RunScript(GetLocalString(oObject, "OnModPlayerDeath"), oObject);  //"nw_o0_death"
        break;
        
        case EVENT_SCRIPT_MODULE_ON_PLAYER_DYING:
          RunScript(GetLocalString(oObject, "OnModPlayerDying"), oObject);  //"nw_o0_dying"
        break;
        
        case EVENT_SCRIPT_MODULE_ON_PLAYER_GUIEVENT:
          RunScript(GetLocalString(oObject, "OnModGui"), oObject);          //""
        break;
        
        case EVENT_SCRIPT_MODULE_ON_PLAYER_LEVEL_UP:
          RunScript(GetLocalString(oObject, "OnModPlayerLvlUp"), oObject);  //""
        break;
        
        case EVENT_SCRIPT_MODULE_ON_PLAYER_REST:
          RunScript(GetLocalString(oObject, "OnModPlayerRest"), oObject);   //"x2_mod_def_rest"
        break;
        
        case EVENT_SCRIPT_MODULE_ON_PLAYER_TARGET:
          RunScript(GetLocalString(oObject, "OnModPlayerTargt"), oObject);  //""
        break;
        
        case EVENT_SCRIPT_MODULE_ON_PLAYER_TILE_ACTION:
          RunScript(GetLocalString(oObject, "OnModPCTileAct"), oObject);    //""
        break;
        
        case EVENT_SCRIPT_MODULE_ON_RESPAWN_BUTTON_PRESSED:
          RunScript(GetLocalString(oObject, "OnModPlayerRespa"), oObject);  //"nw_o0_respawn"
        break;
        
        case EVENT_SCRIPT_MODULE_ON_UNEQUIP_ITEM:
          RunScript(GetLocalString(oObject, "OnModUnEquipItem"), oObject);  //"x2_mod_def_unequ"
        break;
        
        case EVENT_SCRIPT_MODULE_ON_USER_DEFINED_EVENT:
          RunScript(GetLocalString(oObject, "OnModUserdefEvnt"), oObject);  //""
        break;
      }
    }
  break;

    case EVENT_TYPE_PLACEABLE:
    {
      switch (nCurrentEvent)
      {
        case EVENT_SCRIPT_PLACEABLE_ON_CLOSED:
          RunScript(GetLocalString(oObject, "OnPlcClosed"), oObject);       //""
        break;
        
        case EVENT_SCRIPT_PLACEABLE_ON_DAMAGED:
          RunScript(GetLocalString(oObject, "OnPlcDamaged"), oObject);      //""
        break;
        
        case EVENT_SCRIPT_PLACEABLE_ON_DEATH:
          RunScript(GetLocalString(oObject, "OnPlcDeath"), oObject);        //""
        break;
        
        case EVENT_SCRIPT_PLACEABLE_ON_DIALOGUE:
          RunScript(GetLocalString(oObject, "OnPlcDialogue"), oObject);     //""
        break;
        
        case EVENT_SCRIPT_PLACEABLE_ON_DISARM:
          RunScript(GetLocalString(oObject, "OnPlcTrapDisarm"), oObject);   //""
        break;
        
        case EVENT_SCRIPT_PLACEABLE_ON_HEARTBEAT:
          RunScript(GetLocalString(oObject, "OnPlcHeartbeat"), oObject);    //""
        break;
        
        case EVENT_SCRIPT_PLACEABLE_ON_INVENTORYDISTURBED:
          RunScript(GetLocalString(oObject, "OnPlcDisturbed"), oObject);    //""
        break;
        
        case EVENT_SCRIPT_PLACEABLE_ON_LEFT_CLICK:
          RunScript(GetLocalString(oObject, "OnPlcLeftClick"), oObject);    //""
        break;
        
        case EVENT_SCRIPT_PLACEABLE_ON_LOCK:
          RunScript(GetLocalString(oObject, "OnPlcLock"), oObject);         //""
        break;
        
        case EVENT_SCRIPT_PLACEABLE_ON_MELEEATTACKED:
          RunScript(GetLocalString(oObject, "OnPlcPhysAttackd"), oObject);  //""
        break;
        
        case EVENT_SCRIPT_PLACEABLE_ON_OPEN:
          RunScript(GetLocalString(oObject, "OnPlcOpen"), oObject);         //""
        break;
        
        case EVENT_SCRIPT_PLACEABLE_ON_SPELLCASTAT:
          RunScript(GetLocalString(oObject, "OnPlcSpellCastAt"), oObject);  //""
        break;
        
        case EVENT_SCRIPT_PLACEABLE_ON_TRAPTRIGGERED:
          RunScript(GetLocalString(oObject, "OnPlcTrapTrigg"), oObject);    //""
        break;
        
        case EVENT_SCRIPT_PLACEABLE_ON_UNLOCK:
          RunScript(GetLocalString(oObject, "OnPlcUnlock"), oObject);       //""
        break;
        
        case EVENT_SCRIPT_PLACEABLE_ON_USED:
          RunScript(GetLocalString(oObject, "OnPlcUsed"), oObject);         //""
        break;
        
        case EVENT_SCRIPT_PLACEABLE_ON_USER_DEFINED_EVENT:
          RunScript(GetLocalString(oObject, "OnPlcUserDef"), oObject);      //""
        break;
      }
    }
  break;

    case EVENT_TYPE_STORE:
    {
      switch (nCurrentEvent)
      {
        case EVENT_SCRIPT_STORE_ON_CLOSE:
          RunScript(GetLocalString(oObject, "OnStoreClose"), oObject);      //""
        break;
        
        case EVENT_SCRIPT_STORE_ON_OPEN:
          RunScript(GetLocalString(oObject, "OnStoreOpen"), oObject);       //""
        break;
      }
    }
  break;

    case EVENT_TYPE_TRIGGER:
    {
      switch (nCurrentEvent)
      {
        case EVENT_SCRIPT_TRIGGER_ON_CLICKED:
          RunScript(GetLocalString(oObject, "OnTriggerClicked"), oObject);  //""
        break;
        
        case EVENT_SCRIPT_TRIGGER_ON_DISARMED:
          RunScript(GetLocalString(oObject, "OnTriggerTrapDis"), oObject);  //""
        break;
        
        case EVENT_SCRIPT_TRIGGER_ON_HEARTBEAT:
          RunScript(GetLocalString(oObject, "OnTriggerHeartb"), oObject);   //""
        break;
        
        case EVENT_SCRIPT_TRIGGER_ON_OBJECT_ENTER:
          RunScript(GetLocalString(oObject, "OnTriggerEnter"), oObject);    //""
        break;
        
        case EVENT_SCRIPT_TRIGGER_ON_OBJECT_EXIT:
          RunScript(GetLocalString(oObject, "OnTriggerExit"), oObject);     //""
        break;
        
        case EVENT_SCRIPT_TRIGGER_ON_TRAPTRIGGERED:
          RunScript(GetLocalString(oObject, "OnTriggerTrapTrg"), oObject);  //""
        break;
        
        case EVENT_SCRIPT_TRIGGER_ON_USER_DEFINED_EVENT:
          RunScript(GetLocalString(oObject, "OnTriggerUserDef"), oObject);  //""
        break;
      }
    }
    break;

    default:
      Debug("Not hooked.", STRING_COLOR_RED);
    break;
  }
}

int SetHookScriptOnModuleLoad()
{
  int nEvent, b = 0; string sScript;
  object oObject = GetModule();
  
  for (nEvent = EVENT_SCRIPT_MODULE_ON_HEARTBEAT; nEvent <= EVENT_SCRIPT_MODULE_ON_NUI_EVENT; nEvent++)
  {
    sScript = GetEventScript(oObject, nEvent);
    if (sScript != "")
      SetLocalString(oObject, "MODULE!OldEventScript!" + IntToString(nEvent), sScript);
    
    SetEventScript(oObject, nEvent, "hook_script");
    b++;
  }
  
  oObject = GetFirstArea();
  while (GetIsObjectValid(oArea))
  {
    for (nEvent = EVENT_SCRIPT_AREA_ON_HEARTBEAT; nEvent <= EVENT_SCRIPT_AREA_ON_EXIT; nEvent++)
    {
      sScript = GetEventScript(oObject, nEvent);
      if (sScript != "")
        SetLocalString(oObject, "AREA!OldEventScript!" + IntToString(nEvent), sScript);
        
      SetEventScript(oObject, nEvent, "hook_script");
      b++;
    }
    
    oObject = GetNextArea();
  }
  
  return b;
}

void RunScript(string sScript, object oTarget)
{
  if (sScript == "")
    sScript = "NONE";
  
  Debug("Execute script "+sScript+" on "+GetName(oTarget));
  
  if (sScript != "NONE")
    ExecuteScript(sScript, oTarget);
}

int LoadScriptSet()
{
  
  
  return TRUE;
}