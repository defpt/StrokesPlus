--Translate With Google
--by defpt
acSetClipboardText("")
acSendKeys("^c")
acDelay(50)
local text=acGetClipboardText()
if text == "" then
   text = acInputBox("Google 翻译","请输入待翻译文本","")
end
acDelay(50)
local URL="http://translate.google.de/#auto/zh-CN/"..text  
acShellExecute("",URL,"","","")