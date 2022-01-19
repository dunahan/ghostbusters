#include "x3_inc_string"

//Constant            Value   Description
//STRING_COLOR_BLACK  "000"   RGB color encoded string constant used to represent the color black.
//STRING_COLOR_BLUE   "007"   RGB color encoded string constant used to represent the color blue.
//STRING_COLOR_GREEN  "070"   RGB color encoded string constant used to represent the color green.
//STRING_COLOR_PINK   "755"   RGB color encoded string constant used to represent the color pink.
//STRING_COLOR_RED    "700"   RGB color encoded string constant used to represent the color red.
//STRING_COLOR_ROSE   "744"   RGB color encoded string constant used to represent the color rose.
//STRING_COLOR_WHITE  "777"   RGB color encoded string constant used to represent the color white.
void Debug(string sMsg, string sColor=STRING_COLOR_WHITE);

void Debug(string sMsg, string sColor=STRING_COLOR_WHITE)
{
  SendMessageToPC(GetFirstPC(), StringToRGBString(sMsg, sColor));
  WriteTimestampedLogEntry(sMsg);
}
