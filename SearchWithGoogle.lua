--Search With Google
--by defpt
acSetClipboardText("")
acSendKeys("^c")
acDelay(50)
local text=acGetClipboardText()
if text=="" then
   text=acInputBox("Google 搜索", "请输入待搜索内容", "")
end
acDelay(50)
local URL="https://www.google.de/search?q="..text 
acShellExecute("",URL,"","","")
