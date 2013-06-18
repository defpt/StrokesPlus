--Open in GoogleWebeCache
--by defpt
acSetClipboardText("")
acSendKeys("^l")
acSendKeys("^c")
acDelay(25)
local url="http://webcache.googleusercontent.com/search?q=cache:"..acGetClipboardText() 
acShellExecute("",url,"","","")
