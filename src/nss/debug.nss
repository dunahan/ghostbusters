#include "x3_inc_string"

const int DEBUG_LEVEL = 3;

const int EVENT_TYPE_MODULE = 3;
const int EVENT_TYPE_AREA = 4;
const int EVENT_TYPE_CREATURE = 5;
const int EVENT_TYPE_TRIGGER = 7;
const int EVENT_TYPE_PLACEABLE = 9;
const int EVENT_TYPE_DOOR = 10;
const int EVENT_TYPE_AREAOFEFFECT = 11;
const int EVENT_TYPE_ENCOUNTER = 13;
const int EVENT_TYPE_STORE = 14;

//Constant            Value   Description
//STRING_COLOR_BLACK  "000"   RGB color encoded string constant used to represent the color black.
//STRING_COLOR_BLUE   "007"   RGB color encoded string constant used to represent the color blue.
//STRING_COLOR_GREEN  "070"   RGB color encoded string constant used to represent the color green.
//STRING_COLOR_PINK   "755"   RGB color encoded string constant used to represent the color pink.
//STRING_COLOR_RED    "700"   RGB color encoded string constant used to represent the color red.
//STRING_COLOR_ROSE   "744"   RGB color encoded string constant used to represent the color rose.
//STRING_COLOR_WHITE  "777"   RGB color encoded string constant used to represent the color white.
void Debug(string sMsg, string sColor=STRING_COLOR_WHITE)
{
  if (DEBUG_LEVEL == 1)
    SendMessageToPC(GetFirstPC(), StringToRGBString(sMsg, sColor));

  else if (DEBUG_LEVEL == 2)
    WriteTimestampedLogEntry(sMsg);

  else if (DEBUG_LEVEL == 3) {
    SendMessageToPC(GetFirstPC(), StringToRGBString(sMsg, sColor));
    WriteTimestampedLogEntry(sMsg);
  }
}

string DecodeConstant(int nConstant)
{
  string r = "NONE";
  switch (nConstant)
  {
    case EVENT_TYPE_MODULE:       r = "EVENT_TYPE_MODULE"; break;
    case EVENT_TYPE_AREA:         r = "EVENT_TYPE_AREA"; break;
    case EVENT_TYPE_CREATURE:     r = "EVENT_TYPE_CREATURE"; break;
    case EVENT_TYPE_TRIGGER:      r = "EVENT_TYPE_TRIGGER"; break;
    case EVENT_TYPE_PLACEABLE:    r = "EVENT_TYPE_PLACEABLE"; break;
    case EVENT_TYPE_DOOR:         r = "EVENT_TYPE_DOOR"; break;
    case EVENT_TYPE_AREAOFEFFECT: r = "EVENT_TYPE_AREAOFEFFECT"; break;
    case EVENT_TYPE_ENCOUNTER:    r = "EVENT_TYPE_ENCOUNTER"; break;
    case EVENT_TYPE_STORE:        r = "EVENT_TYPE_STORE"; break;

    case OBJECT_TYPE_ALL:             r = "OBJECT_TYPE_ALL"; break;
    case OBJECT_TYPE_AREA_OF_EFFECT:  r = "OBJECT_TYPE_AREA_OF_EFFECT"; break;
    case OBJECT_TYPE_CREATURE:        r = "OBJECT_TYPE_CREATURE"; break;
    case OBJECT_TYPE_DOOR:            r = "OBJECT_TYPE_DOOR"; break;
    case OBJECT_TYPE_ENCOUNTER:       r = "OBJECT_TYPE_ENCOUNTER"; break;
//  case OBJECT_TYPE_INVALID:         r = "OBJECT_TYPE_INVALID"; break;
    case OBJECT_TYPE_ITEM:            r = "OBJECT_TYPE_ITEM"; break;
    case OBJECT_TYPE_PLACEABLE:       r = "OBJECT_TYPE_PLACEABLE"; break;
    case OBJECT_TYPE_STORE:           r = "OBJECT_TYPE_STORE"; break;
    case OBJECT_TYPE_TILE:            r = "OBJECT_TYPE_TILE"; break;
//  case OBJECT_TYPE_TRIGGER:         r = "OBJECT_TYPE_TRIGGER"; break;
    case OBJECT_TYPE_WAYPOINT:        r = "OBJECT_TYPE_WAYPOINT"; break;

    case EVENT_SCRIPT_MODULE_ON_HEARTBEAT:              r = "EVENT_SCRIPT_MODULE_ON_HEARTBEAT"; break;
    case EVENT_SCRIPT_MODULE_ON_USER_DEFINED_EVENT:     r = "EVENT_SCRIPT_MODULE_ON_USER_DEFINED_EVENT"; break;
    case EVENT_SCRIPT_MODULE_ON_MODULE_LOAD:            r = "EVENT_SCRIPT_MODULE_ON_MODULE_LOAD"; break;
    case EVENT_SCRIPT_MODULE_ON_MODULE_START:           r = "EVENT_SCRIPT_MODULE_ON_MODULE_START"; break;
    case EVENT_SCRIPT_MODULE_ON_CLIENT_ENTER:           r = "EVENT_SCRIPT_MODULE_ON_CLIENT_ENTER"; break;
    case EVENT_SCRIPT_MODULE_ON_CLIENT_EXIT:            r = "EVENT_SCRIPT_MODULE_ON_CLIENT_EXIT"; break;
    case EVENT_SCRIPT_MODULE_ON_ACTIVATE_ITEM:          r = "EVENT_SCRIPT_MODULE_ON_ACTIVATE_ITEM"; break;
    case EVENT_SCRIPT_MODULE_ON_ACQUIRE_ITEM:           r = "EVENT_SCRIPT_MODULE_ON_ACQUIRE_ITEM"; break;
    case EVENT_SCRIPT_MODULE_ON_LOSE_ITEM:              r = "EVENT_SCRIPT_MODULE_ON_LOSE_ITEM"; break;
    case EVENT_SCRIPT_MODULE_ON_PLAYER_DEATH:           r = "EVENT_SCRIPT_MODULE_ON_PLAYER_DEATH"; break;
    case EVENT_SCRIPT_MODULE_ON_PLAYER_DYING:           r = "EVENT_SCRIPT_MODULE_ON_PLAYER_DYING"; break;
    case EVENT_SCRIPT_MODULE_ON_RESPAWN_BUTTON_PRESSED: r = "EVENT_SCRIPT_MODULE_ON_RESPAWN_BUTTON_PRESSED"; break;
    case EVENT_SCRIPT_MODULE_ON_PLAYER_REST:            r = "EVENT_SCRIPT_MODULE_ON_PLAYER_REST"; break;
    case EVENT_SCRIPT_MODULE_ON_PLAYER_LEVEL_UP:        r = "EVENT_SCRIPT_MODULE_ON_PLAYER_LEVEL_UP"; break;
    case EVENT_SCRIPT_MODULE_ON_PLAYER_CANCEL_CUTSCENE: r = "EVENT_SCRIPT_MODULE_ON_PLAYER_CANCEL_CUTSCENE"; break;
    case EVENT_SCRIPT_MODULE_ON_EQUIP_ITEM:             r = "EVENT_SCRIPT_MODULE_ON_EQUIP_ITEM"; break;
    case EVENT_SCRIPT_MODULE_ON_UNEQUIP_ITEM:           r = "EVENT_SCRIPT_MODULE_ON_UNEQUIP_ITEM"; break;
    case EVENT_SCRIPT_MODULE_ON_PLAYER_CHAT:            r = "EVENT_SCRIPT_MODULE_ON_PLAYER_CHAT"; break;
    case EVENT_SCRIPT_MODULE_ON_PLAYER_TARGET:          r = "EVENT_SCRIPT_MODULE_ON_PLAYER_TARGET"; break;
    case EVENT_SCRIPT_MODULE_ON_PLAYER_GUIEVENT:        r = "EVENT_SCRIPT_MODULE_ON_PLAYER_GUIEVENT"; break;
    case EVENT_SCRIPT_MODULE_ON_PLAYER_TILE_ACTION:     r = "EVENT_SCRIPT_MODULE_ON_PLAYER_TILE_ACTION"; break;
    case EVENT_SCRIPT_MODULE_ON_NUI_EVENT:              r = "EVENT_SCRIPT_MODULE_ON_NUI_EVENT"; break;

    case EVENT_SCRIPT_AREA_ON_HEARTBEAT:                r = "EVENT_SCRIPT_AREA_ON_HEARTBEAT"; break;
    case EVENT_SCRIPT_AREA_ON_USER_DEFINED_EVENT:       r = "EVENT_SCRIPT_AREA_ON_USER_DEFINED_EVENT"; break;
    case EVENT_SCRIPT_AREA_ON_ENTER:                    r = "EVENT_SCRIPT_AREA_ON_ENTER"; break;
    case EVENT_SCRIPT_AREA_ON_EXIT:                     r = "EVENT_SCRIPT_AREA_ON_EXIT"; break;

    case EVENT_SCRIPT_CREATURE_ON_HEARTBEAT:            r = "EVENT_SCRIPT_CREATURE_ON_HEARTBEAT"; break;
    case EVENT_SCRIPT_CREATURE_ON_NOTICE:               r = "EVENT_SCRIPT_CREATURE_ON_NOTICE"; break;
    case EVENT_SCRIPT_CREATURE_ON_SPELLCASTAT:          r = "EVENT_SCRIPT_CREATURE_ON_SPELLCASTAT"; break;
    case EVENT_SCRIPT_CREATURE_ON_MELEE_ATTACKED:       r = "EVENT_SCRIPT_CREATURE_ON_MELEE_ATTACKED"; break;
    case EVENT_SCRIPT_CREATURE_ON_DAMAGED:              r = "EVENT_SCRIPT_CREATURE_ON_DAMAGED"; break;
    case EVENT_SCRIPT_CREATURE_ON_DISTURBED:            r = "EVENT_SCRIPT_CREATURE_ON_DISTURBED"; break;
    case EVENT_SCRIPT_CREATURE_ON_END_COMBATROUND:      r = "EVENT_SCRIPT_CREATURE_ON_END_COMBATROUND"; break;
    case EVENT_SCRIPT_CREATURE_ON_DIALOGUE:             r = "EVENT_SCRIPT_CREATURE_ON_DIALOGUE"; break;
    case EVENT_SCRIPT_CREATURE_ON_SPAWN_IN:             r = "EVENT_SCRIPT_CREATURE_ON_SPAWN_IN"; break;
    case EVENT_SCRIPT_CREATURE_ON_RESTED:               r = "EVENT_SCRIPT_CREATURE_ON_RESTED"; break;
    case EVENT_SCRIPT_CREATURE_ON_DEATH:                r = "EVENT_SCRIPT_CREATURE_ON_DEATH"; break;
    case EVENT_SCRIPT_CREATURE_ON_USER_DEFINED_EVENT:   r = "EVENT_SCRIPT_CREATURE_ON_USER_DEFINED_EVENT"; break;
    case EVENT_SCRIPT_CREATURE_ON_BLOCKED_BY_DOOR:      r = "EVENT_SCRIPT_CREATURE_ON_BLOCKED_BY_DOOR"; break;

    case EVENT_SCRIPT_TRIGGER_ON_HEARTBEAT:             r = "EVENT_SCRIPT_TRIGGER_ON_HEARTBEAT"; break;
    case EVENT_SCRIPT_TRIGGER_ON_OBJECT_ENTER:          r = "EVENT_SCRIPT_TRIGGER_ON_OBJECT_ENTER"; break;
    case EVENT_SCRIPT_TRIGGER_ON_OBJECT_EXIT:           r = "EVENT_SCRIPT_TRIGGER_ON_OBJECT_EXIT"; break;
    case EVENT_SCRIPT_TRIGGER_ON_USER_DEFINED_EVENT:    r = "EVENT_SCRIPT_TRIGGER_ON_USER_DEFINED_EVENT"; break;
    case EVENT_SCRIPT_TRIGGER_ON_TRAPTRIGGERED:         r = "EVENT_SCRIPT_TRIGGER_ON_TRAPTRIGGERED"; break;
    case EVENT_SCRIPT_TRIGGER_ON_DISARMED:              r = "EVENT_SCRIPT_TRIGGER_ON_DISARMED"; break;
    case EVENT_SCRIPT_TRIGGER_ON_CLICKED:               r = "EVENT_SCRIPT_TRIGGER_ON_CLICKED"; break;

    case EVENT_SCRIPT_PLACEABLE_ON_CLOSED:              r = "EVENT_SCRIPT_PLACEABLE_ON_CLOSED"; break;
    case EVENT_SCRIPT_PLACEABLE_ON_DAMAGED:             r = "EVENT_SCRIPT_PLACEABLE_ON_DAMAGED"; break;
    case EVENT_SCRIPT_PLACEABLE_ON_DEATH:               r = "EVENT_SCRIPT_PLACEABLE_ON_DEATH"; break;
    case EVENT_SCRIPT_PLACEABLE_ON_DISARM:              r = "EVENT_SCRIPT_PLACEABLE_ON_DISARM"; break;
    case EVENT_SCRIPT_PLACEABLE_ON_HEARTBEAT:           r = "EVENT_SCRIPT_PLACEABLE_ON_HEARTBEAT"; break;
    case EVENT_SCRIPT_PLACEABLE_ON_INVENTORYDISTURBED:  r = "EVENT_SCRIPT_PLACEABLE_ON_INVENTORYDISTURBED"; break;
    case EVENT_SCRIPT_PLACEABLE_ON_LOCK:                r = "EVENT_SCRIPT_PLACEABLE_ON_LOCK"; break;
    case EVENT_SCRIPT_PLACEABLE_ON_MELEEATTACKED:       r = "EVENT_SCRIPT_PLACEABLE_ON_MELEEATTACKED"; break;
    case EVENT_SCRIPT_PLACEABLE_ON_OPEN:                r = "EVENT_SCRIPT_PLACEABLE_ON_OPEN"; break;
    case EVENT_SCRIPT_PLACEABLE_ON_SPELLCASTAT:         r = "EVENT_SCRIPT_PLACEABLE_ON_SPELLCASTAT"; break;
    case EVENT_SCRIPT_PLACEABLE_ON_TRAPTRIGGERED:       r = "EVENT_SCRIPT_PLACEABLE_ON_TRAPTRIGGERED"; break;
    case EVENT_SCRIPT_PLACEABLE_ON_UNLOCK:              r = "EVENT_SCRIPT_PLACEABLE_ON_UNLOCK"; break;
    case EVENT_SCRIPT_PLACEABLE_ON_USED:                r = "EVENT_SCRIPT_PLACEABLE_ON_USED"; break;
    case EVENT_SCRIPT_PLACEABLE_ON_USER_DEFINED_EVENT:  r = "EVENT_SCRIPT_PLACEABLE_ON_USER_DEFINED_EVENT"; break;
    case EVENT_SCRIPT_PLACEABLE_ON_DIALOGUE:            r = "EVENT_SCRIPT_PLACEABLE_ON_DIALOGUE"; break;
    case EVENT_SCRIPT_PLACEABLE_ON_LEFT_CLICK:          r = "EVENT_SCRIPT_PLACEABLE_ON_LEFT_CLICK"; break;

    case EVENT_SCRIPT_DOOR_ON_OPEN:                     r = "EVENT_SCRIPT_DOOR_ON_OPEN"; break;
    case EVENT_SCRIPT_DOOR_ON_CLOSE:                    r = "EVENT_SCRIPT_DOOR_ON_CLOSE"; break;
    case EVENT_SCRIPT_DOOR_ON_DAMAGE:                   r = "EVENT_SCRIPT_DOOR_ON_DAMAGE"; break;
    case EVENT_SCRIPT_DOOR_ON_DEATH:                    r = "EVENT_SCRIPT_DOOR_ON_DEATH"; break;
    case EVENT_SCRIPT_DOOR_ON_DISARM:                   r = "EVENT_SCRIPT_DOOR_ON_DISARM"; break;
    case EVENT_SCRIPT_DOOR_ON_HEARTBEAT:                r = "EVENT_SCRIPT_DOOR_ON_HEARTBEAT"; break;
    case EVENT_SCRIPT_DOOR_ON_LOCK:                     r = "EVENT_SCRIPT_DOOR_ON_LOCK"; break;
    case EVENT_SCRIPT_DOOR_ON_MELEE_ATTACKED:           r = "EVENT_SCRIPT_DOOR_ON_MELEE_ATTACKED"; break;
    case EVENT_SCRIPT_DOOR_ON_SPELLCASTAT:              r = "EVENT_SCRIPT_DOOR_ON_SPELLCASTAT"; break;
    case EVENT_SCRIPT_DOOR_ON_TRAPTRIGGERED:            r = "EVENT_SCRIPT_DOOR_ON_TRAPTRIGGERED"; break;
    case EVENT_SCRIPT_DOOR_ON_UNLOCK:                   r = "EVENT_SCRIPT_DOOR_ON_UNLOCK"; break;
    case EVENT_SCRIPT_DOOR_ON_USERDEFINED:              r = "EVENT_SCRIPT_DOOR_ON_USERDEFINED"; break;
    case EVENT_SCRIPT_DOOR_ON_CLICKED:                  r = "EVENT_SCRIPT_DOOR_ON_CLICKED"; break;
    case EVENT_SCRIPT_DOOR_ON_DIALOGUE:                 r = "EVENT_SCRIPT_DOOR_ON_DIALOGUE"; break;
    case EVENT_SCRIPT_DOOR_ON_FAIL_TO_OPEN:             r = "EVENT_SCRIPT_DOOR_ON_FAIL_TO_OPEN"; break;

    case EVENT_SCRIPT_AREAOFEFFECT_ON_HEARTBEAT:          r = "EVENT_SCRIPT_AREAOFEFFECT_ON_HEARTBEAT"; break;
    case EVENT_SCRIPT_AREAOFEFFECT_ON_USER_DEFINED_EVENT: r = "EVENT_SCRIPT_AREAOFEFFECT_ON_USER_DEFINED_EVENT"; break;
    case EVENT_SCRIPT_AREAOFEFFECT_ON_OBJECT_ENTER:       r = "EVENT_SCRIPT_AREAOFEFFECT_ON_OBJECT_ENTER"; break;
    case EVENT_SCRIPT_AREAOFEFFECT_ON_OBJECT_EXIT:        r = "EVENT_SCRIPT_AREAOFEFFECT_ON_OBJECT_EXIT"; break;

    case EVENT_SCRIPT_ENCOUNTER_ON_OBJECT_ENTER:        r = "EVENT_SCRIPT_ENCOUNTER_ON_OBJECT_ENTER"; break;
    case EVENT_SCRIPT_ENCOUNTER_ON_OBJECT_EXIT:         r = "EVENT_SCRIPT_ENCOUNTER_ON_OBJECT_EXIT"; break;
    case EVENT_SCRIPT_ENCOUNTER_ON_HEARTBEAT:           r = "EVENT_SCRIPT_ENCOUNTER_ON_HEARTBEAT"; break;
    case EVENT_SCRIPT_ENCOUNTER_ON_ENCOUNTER_EXHAUSTED: r = "EVENT_SCRIPT_ENCOUNTER_ON_ENCOUNTER_EXHAUSTED"; break;
    case EVENT_SCRIPT_ENCOUNTER_ON_USER_DEFINED_EVENT:  r = "EVENT_SCRIPT_ENCOUNTER_ON_USER_DEFINED_EVENT"; break;

    case EVENT_SCRIPT_STORE_ON_OPEN:  r = "EVENT_SCRIPT_STORE_ON_OPEN"; break;
    case EVENT_SCRIPT_STORE_ON_CLOSE: r = "EVENT_SCRIPT_STORE_ON_CLOSE"; break;

    default: r = "DEFAULT"; break;
  }
  return r;
}

void ReadLocals()
{
  object oObject = GetModule();
  int i;

  string sMsg = "CustomScriptSet? "+IntToString(GetLocalInt(oObject, "custom_scriptset"))
             +"\nCustomScripts: "+IntToString(GetLocalInt(oObject, "custom"))
             +"\nHookedScripts: "+IntToString(GetLocalInt(oObject, "hooked"));

  for (i = EVENT_SCRIPT_MODULE_ON_HEARTBEAT; i <= EVENT_SCRIPT_MODULE_ON_NUI_EVENT; i++)
  {
    if (GetLocalString(oObject, IntToString(i)) !="")
      sMsg += "\n"+DecodeConstant(i)+": "+GetLocalString(oObject, IntToString(i));
  }

  for (i = EVENT_SCRIPT_AREA_ON_HEARTBEAT; i <= EVENT_SCRIPT_AREA_ON_EXIT; i++)
  {
    if (GetLocalString(oObject, IntToString(i)) !="")
      sMsg += "\n"+DecodeConstant(i)+": "+GetLocalString(oObject, IntToString(i));
  }

  for (i = EVENT_SCRIPT_CREATURE_ON_HEARTBEAT; i <= EVENT_SCRIPT_CREATURE_ON_BLOCKED_BY_DOOR; i++)
  {
    if (GetLocalString(oObject, IntToString(i)) !="")
      sMsg += "\n"+DecodeConstant(i)+": "+GetLocalString(oObject, IntToString(i));
  }

  for (i = EVENT_SCRIPT_TRIGGER_ON_HEARTBEAT; i <= EVENT_SCRIPT_TRIGGER_ON_CLICKED; i++)
  {
    if (GetLocalString(oObject, IntToString(i)) !="")
      sMsg += "\n"+DecodeConstant(i)+": "+GetLocalString(oObject, IntToString(i));
  }

  for (i = EVENT_SCRIPT_PLACEABLE_ON_CLOSED; i <= EVENT_SCRIPT_PLACEABLE_ON_LEFT_CLICK; i++)
  {
    if (GetLocalString(oObject, IntToString(i)) !="")
      sMsg += "\n"+DecodeConstant(i)+": "+GetLocalString(oObject, IntToString(i));
  }

  for (i = EVENT_SCRIPT_DOOR_ON_OPEN; i <= EVENT_SCRIPT_DOOR_ON_FAIL_TO_OPEN; i++)
  {
    if (GetLocalString(oObject, IntToString(i)) !="")
      sMsg += "\n"+DecodeConstant(i)+": "+GetLocalString(oObject, IntToString(i));
  }

  for (i = EVENT_SCRIPT_AREAOFEFFECT_ON_HEARTBEAT; i <= EVENT_SCRIPT_AREAOFEFFECT_ON_OBJECT_EXIT; i++)
  {
    if (GetLocalString(oObject, IntToString(i)) !="")
      sMsg += "\n"+DecodeConstant(i)+": "+GetLocalString(oObject, IntToString(i));
  }

  for (i = EVENT_SCRIPT_ENCOUNTER_ON_OBJECT_ENTER; i <= EVENT_SCRIPT_ENCOUNTER_ON_USER_DEFINED_EVENT; i++)
  {
    if (GetLocalString(oObject, IntToString(i)) !="")
      sMsg += "\n"+DecodeConstant(i)+": "+GetLocalString(oObject, IntToString(i));
  }

  if (GetLocalString(oObject, IntToString(EVENT_SCRIPT_STORE_ON_OPEN)) !="")
    sMsg += "\n"+DecodeConstant(i)+": "+GetLocalString(oObject, IntToString(EVENT_SCRIPT_STORE_ON_OPEN));

  if (GetLocalString(oObject, IntToString(EVENT_SCRIPT_STORE_ON_CLOSE)) !="")
    sMsg += "\n"+DecodeConstant(i)+": "+GetLocalString(oObject, IntToString(EVENT_SCRIPT_STORE_ON_CLOSE));

  Debug(sMsg, STRING_COLOR_GREEN);
}
