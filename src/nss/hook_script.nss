#include "hook_custscripts"

void main()
{
  if (GetLocalInt(GetModule(), "custom_scriptset") == 1)
  {
    SetLocalInt(GetModule(), "custom", LoadGlobalScriptSetToModule(GetModule()));

    if (GetLocalInt(GetModule(), "t") == 0)
    {
      Debug("Loaded custom scripts "+IntToString(GetLocalInt(GetModule(), "custom")), STRING_COLOR_GREEN);
      SetLocalInt(GetModule(), "t", 1);
    }
  }

  if (GetLocalInt(GetModule(), "hooked") == 0)
  {
    SetLocalInt(GetModule(), "hooked", SetHookScriptOnModuleLoad());
    Debug("Scripts to locals "+IntToString(GetLocalInt(GetModule(), "hooked")), STRING_COLOR_GREEN);
  }

  object oObject = OBJECT_SELF;
  int nCurrentEvent = GetCurrentlyRunningEvent();
  Debug("Current Event Type and Event Script "+DecodeConstant(nCurrentEvent/1000)+" | "+DecodeConstant(nCurrentEvent));

  RunScript(nCurrentEvent, oObject);
}

