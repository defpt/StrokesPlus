--Open With Other Browser
acSetClipboardText("")
acSendKeys("^l")
acSendKeys("^c")
local url=acGetClipboardText()
acShellExecute("open","iexplore.exe",url,"C:\\Program Files\\Internet Explorer\\","")
