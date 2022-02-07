#include "hook_custscripts"

void main()
{
  if (HOOK_USE_GLOBAL_DEFINED_SCRIPTSET == TRUE)
  {
    SetLocalInt(GetModule(), "custom", LoadGlobalScriptSetToModule(GetModule()));

    if (GetLocalInt(GetModule(), "t") == FALSE)
    {
      Debug("Loaded custom scripts "+IntToString(GetLocalInt(GetModule(), "custom")), STRING_COLOR_GREEN);
      SetLocalInt(GetModule(), "t", TRUE);
    }
  }

  if (GetLocalInt(GetModule(), "hooked") == FALSE)
  {
    SetLocalInt(GetModule(), "hooked", SetHookScriptOnModuleLoad());
    Debug("Scripts to locals "+IntToString(GetLocalInt(GetModule(), "hooked")), STRING_COLOR_GREEN);
  }

  object oObject = OBJECT_SELF;
  int nCurrentEvent = GetCurrentlyRunningEvent();
  
  Debug("Current Event Type and Event Script "+DecodeConstant(nCurrentEvent/1000)+" | "+DecodeConstant(nCurrentEvent));
  RunScript(nCurrentEvent, oObject);
}
