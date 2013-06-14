--View with Firefox
acSetClipboardText("")
acSendKeys("^l")
acSendKeys("^c")
local url=acGetClipboardText()
acRunProgram("D:\\Program Files\\MyFirefox\\FirefoxBeta\\firefox.exe",url,0, 1)
