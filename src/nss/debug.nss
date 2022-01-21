#include "x3_inc_string"

const int DEBUG_LEVEL = 3;

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
    case  3: r = "EVENT_TYPE_MODULE"; break;
    case  4: r = "EVENT_TYPE_AREA"; break;
    case  5: r = "EVENT_TYPE_CREATURE"; break;
    case  7: r = "EVENT_TYPE_TRIGGER"; break;
    case  9: r = "EVENT_TYPE_PLACEABLE"; break;
    case 10: r = "EVENT_TYPE_DOOR"; break;
    case 11: r = "EVENT_TYPE_AREAOFEFFECT"; break;
    case 13: r = "EVENT_TYPE_ENCOUNTER"; break;
    case 14: r = "EVENT_TYPE_STORE"; break;
    
    case 3000: r = "EVENT_SCRIPT_MODULE_ON_HEARTBEAT"; break;
    case 3001: r = "EVENT_SCRIPT_MODULE_ON_USER_DEFINED_EVENT"; break;
    case 3002: r = "EVENT_SCRIPT_MODULE_ON_MODULE_LOAD"; break;
    case 3003: r = "EVENT_SCRIPT_MODULE_ON_MODULE_START"; break;
    case 3004: r = "EVENT_SCRIPT_MODULE_ON_CLIENT_ENTER"; break;
    case 3005: r = "EVENT_SCRIPT_MODULE_ON_CLIENT_EXIT"; break;
    case 3006: r = "EVENT_SCRIPT_MODULE_ON_ACTIVATE_ITEM"; break;
    case 3007: r = "EVENT_SCRIPT_MODULE_ON_ACQUIRE_ITEM"; break;
    case 3008: r = "EVENT_SCRIPT_MODULE_ON_LOSE_ITEM"; break;
    case 3009: r = "EVENT_SCRIPT_MODULE_ON_PLAYER_DEATH"; break;
    case 3010: r = "EVENT_SCRIPT_MODULE_ON_PLAYER_DYING"; break;
    case 3011: r = "EVENT_SCRIPT_MODULE_ON_RESPAWN_BUTTON_PRESSED"; break;
    case 3012: r = "EVENT_SCRIPT_MODULE_ON_PLAYER_REST"; break;
    case 3013: r = "EVENT_SCRIPT_MODULE_ON_PLAYER_LEVEL_UP"; break;
    case 3014: r = "EVENT_SCRIPT_MODULE_ON_PLAYER_CANCEL_CUTSCENE"; break;
    case 3015: r = "EVENT_SCRIPT_MODULE_ON_EQUIP_ITEM"; break;
    case 3016: r = "EVENT_SCRIPT_MODULE_ON_UNEQUIP_ITEM"; break;
    case 3017: r = "EVENT_SCRIPT_MODULE_ON_PLAYER_CHAT"; break;
    case 3018: r = "EVENT_SCRIPT_MODULE_ON_PLAYER_TARGET"; break;
    case 3019: r = "EVENT_SCRIPT_MODULE_ON_PLAYER_GUIEVENT"; break;
    case 3020: r = "EVENT_SCRIPT_MODULE_ON_PLAYER_TILE_ACTION"; break;
    case 3021: r = "EVENT_SCRIPT_MODULE_ON_NUI_EVENT"; break;
    case 4000: r = "EVENT_SCRIPT_AREA_ON_HEARTBEAT"; break;
    case 4001: r = "EVENT_SCRIPT_AREA_ON_USER_DEFINED_EVENT"; break;
    case 4002: r = "EVENT_SCRIPT_AREA_ON_ENTER"; break;
    case 4003: r = "EVENT_SCRIPT_AREA_ON_EXIT"; break;
    case 5000: r = "EVENT_SCRIPT_CREATURE_ON_HEARTBEAT"; break;
    case 5001: r = "EVENT_SCRIPT_CREATURE_ON_NOTICE"; break;
    case 5002: r = "EVENT_SCRIPT_CREATURE_ON_SPELLCASTAT"; break;
    case 5003: r = "EVENT_SCRIPT_CREATURE_ON_MELEE_ATTACKED"; break;
    case 5004: r = "EVENT_SCRIPT_CREATURE_ON_DAMAGED"; break;
    case 5005: r = "EVENT_SCRIPT_CREATURE_ON_DISTURBED"; break;
    case 5006: r = "EVENT_SCRIPT_CREATURE_ON_END_COMBATROUND"; break;
    case 5007: r = "EVENT_SCRIPT_CREATURE_ON_DIALOGUE"; break;
    case 5008: r = "EVENT_SCRIPT_CREATURE_ON_SPAWN_IN"; break;
    case 5009: r = "EVENT_SCRIPT_CREATURE_ON_RESTED"; break;
    case 5010: r = "EVENT_SCRIPT_CREATURE_ON_DEATH"; break;
    case 5011: r = "EVENT_SCRIPT_CREATURE_ON_USER_DEFINED_EVENT"; break;
    case 5012: r = "EVENT_SCRIPT_CREATURE_ON_BLOCKED_BY_DOOR"; break;
    case 7000: r = "EVENT_SCRIPT_TRIGGER_ON_HEARTBEAT"; break;
    case 7001: r = "EVENT_SCRIPT_TRIGGER_ON_OBJECT_ENTER"; break;
    case 7002: r = "EVENT_SCRIPT_TRIGGER_ON_OBJECT_EXIT"; break;
    case 7003: r = "EVENT_SCRIPT_TRIGGER_ON_USER_DEFINED_EVENT"; break;
    case 7004: r = "EVENT_SCRIPT_TRIGGER_ON_TRAPTRIGGERED"; break;
    case 7005: r = "EVENT_SCRIPT_TRIGGER_ON_DISARMED"; break;
    case 7006: r = "EVENT_SCRIPT_TRIGGER_ON_CLICKED"; break;
    case 9000: r = "EVENT_SCRIPT_PLACEABLE_ON_CLOSED"; break;
    case 9001: r = "EVENT_SCRIPT_PLACEABLE_ON_DAMAGED"; break;
    case 9002: r = "EVENT_SCRIPT_PLACEABLE_ON_DEATH"; break;
    case 9003: r = "EVENT_SCRIPT_PLACEABLE_ON_DISARM"; break;
    case 9004: r = "EVENT_SCRIPT_PLACEABLE_ON_HEARTBEAT"; break;
    case 9005: r = "EVENT_SCRIPT_PLACEABLE_ON_INVENTORYDISTURBED"; break;
    case 9006: r = "EVENT_SCRIPT_PLACEABLE_ON_LOCK"; break;
    case 9007: r = "EVENT_SCRIPT_PLACEABLE_ON_MELEEATTACKED"; break;
    case 9008: r = "EVENT_SCRIPT_PLACEABLE_ON_OPEN"; break;
    case 9009: r = "EVENT_SCRIPT_PLACEABLE_ON_SPELLCASTAT"; break;
    case 9010: r = "EVENT_SCRIPT_PLACEABLE_ON_TRAPTRIGGERED"; break;
    case 9011: r = "EVENT_SCRIPT_PLACEABLE_ON_UNLOCK"; break;
    case 9012: r = "EVENT_SCRIPT_PLACEABLE_ON_USED"; break;
    case 9013: r = "EVENT_SCRIPT_PLACEABLE_ON_USER_DEFINED_EVENT"; break;
    case 9014: r = "EVENT_SCRIPT_PLACEABLE_ON_DIALOGUE"; break;
    case 9015: r = "EVENT_SCRIPT_PLACEABLE_ON_LEFT_CLICK"; break;
    case 10000: r = "EVENT_SCRIPT_DOOR_ON_OPEN"; break;
    case 10001: r = "EVENT_SCRIPT_DOOR_ON_CLOSE"; break;
    case 10002: r = "EVENT_SCRIPT_DOOR_ON_DAMAGE"; break;
    case 10003: r = "EVENT_SCRIPT_DOOR_ON_DEATH"; break;
    case 10004: r = "EVENT_SCRIPT_DOOR_ON_DISARM"; break;
    case 10005: r = "EVENT_SCRIPT_DOOR_ON_HEARTBEAT"; break;
    case 10006: r = "EVENT_SCRIPT_DOOR_ON_LOCK"; break;
    case 10007: r = "EVENT_SCRIPT_DOOR_ON_MELEE_ATTACKED"; break;
    case 10008: r = "EVENT_SCRIPT_DOOR_ON_SPELLCASTAT"; break;
    case 10009: r = "EVENT_SCRIPT_DOOR_ON_TRAPTRIGGERED"; break;
    case 10010: r = "EVENT_SCRIPT_DOOR_ON_UNLOCK"; break;
    case 10011: r = "EVENT_SCRIPT_DOOR_ON_USERDEFINED"; break;
    case 10012: r = "EVENT_SCRIPT_DOOR_ON_CLICKED"; break;
    case 10013: r = "EVENT_SCRIPT_DOOR_ON_DIALOGUE"; break;
    case 10014: r = "EVENT_SCRIPT_DOOR_ON_FAIL_TO_OPEN"; break;
    case 11000: r = "EVENT_SCRIPT_AREAOFEFFECT_ON_HEARTBEAT"; break;
    case 11001: r = "EVENT_SCRIPT_AREAOFEFFECT_ON_USER_DEFINED_EVENT"; break;
    case 11002: r = "EVENT_SCRIPT_AREAOFEFFECT_ON_OBJECT_ENTER"; break;
    case 11003: r = "EVENT_SCRIPT_AREAOFEFFECT_ON_OBJECT_EXIT"; break;
    case 13000: r = "EVENT_SCRIPT_ENCOUNTER_ON_OBJECT_ENTER"; break;
    case 13001: r = "EVENT_SCRIPT_ENCOUNTER_ON_OBJECT_EXIT"; break;
    case 13002: r = "EVENT_SCRIPT_ENCOUNTER_ON_HEARTBEAT"; break;
    case 13003: r = "EVENT_SCRIPT_ENCOUNTER_ON_ENCOUNTER_EXHAUSTED"; break;
    case 13004: r = "EVENT_SCRIPT_ENCOUNTER_ON_USER_DEFINED_EVENT"; break;
    case 14000: r = "EVENT_SCRIPT_STORE_ON_OPEN"; break;
    case 14001: r = "EVENT_SCRIPT_STORE_ON_CLOSE"; break;
    default: r = "DEFAULT"; break;
  }
  return r;
}
