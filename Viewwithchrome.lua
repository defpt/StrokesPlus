--View with chrome
acSetClipboardText("")
acSendKeys("^l")
acSendKeys("^c")
local url=acGetClipboardText()
acRunProgram("D:\\Program Files\\MyChrome\\MyChrome.exe",url,0, 1)
