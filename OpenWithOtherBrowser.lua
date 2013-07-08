--Open With Other Browser
--by defpt
acSendKeys("%d")
acDelay(25)
acSendKeys("^c")
acDelay(50)
url=acGetClipboardText()
acDelay(50)
acShellExecute("open","iexplore.exe",url,"C:\\Program Files\\Internet Explorer\\","")
