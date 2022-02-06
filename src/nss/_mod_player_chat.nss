#include "debug"

void main()
{
  string sChat = GetPCChatMessage();
  Debug("_mod_player_chat script running.", STRING_COLOR_GREEN);
  if (sChat == "des")
    ReadLocals();

  Debug("_mod_player_chat script ended.", STRING_COLOR_GREEN);
}
