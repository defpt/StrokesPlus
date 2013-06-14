--Clip to OneNote(by defpt)
--设置 OneNote 路径版
acSetClipboardText("")
acSendKeys("^c")
acDelay(50)
local data=acGetClipboardText()
if data ~= "" then 
   acShellExecute("open","Onenote.exe","/sidenote","C:\\Program Files\\Microsoft Office\\Office15\\","")
   acDelay(3000) --看自己机子设置延时大小
   acSendKeys("^v")
else
   acSendKeys("^a")
   acDelay(50)
   acSendKeys("^c")
   acDelay(50)
   acShellExecute("open","Onenote.exe","/sidenote","C:\\Program Files\\Microsoft Office\\Office15\\","")
   acDelay(3000) --看自己机子设置延时大小
   acSendKeys("^v")
end
