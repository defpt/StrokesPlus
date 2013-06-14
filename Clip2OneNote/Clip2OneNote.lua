--Clip to OneNote(by defpt)
--无需设置 OneNote 路径版
acSetClipboardText("")
acSendKeys("^c")
acDelay(50)
local data=acGetClipboardText()
if data ~= "" then 
   acSendKeys("{DELAY=100}@r")
   acSendKeys("{DELAY=50}onenote /sidenote~")
   acDelay(3000) --看自己机子设置延时大小
   acSendKeys("^v")
else
   acSendKeys("^a")
   acDelay(50)
   acSendKeys("^c")
   acDelay(50)
   acSendKeys("{DELAY=100}@r")
   acSendKeys("{DELAY=50}onenote /sidenote~")
   acDelay(3000) --看自己机子设置延时大小
   acSendKeys("^v")
end
