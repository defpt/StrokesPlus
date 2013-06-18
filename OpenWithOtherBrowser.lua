--Open With Other Browser
--by defpt
acSetClipboardText("")
acSendKeys("^l")
acSendKeys("^c")
acDelay(50)
local url=acGetClipboardText()
acShellExecute("open","iexplore.exe",url,"C:\\Program Files\\Internet Explorer\\","")
