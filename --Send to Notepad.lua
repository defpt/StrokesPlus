--Send to Notepad
acSetClipboardText("")
acSendKeys("^c")
acDelay(50)
acSendKeys("{DELAY=100}@r")
acSendKeys("{DELAY=100}notepad~")
acDelay(300)
acSendKeys("^v")


