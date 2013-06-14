--Search this with google (by defpt)
function acSearch(x)
   local URL="https://www.google.de/#hl=zh-CN&newTab=1&tbo=d&site=&source=hp&q="..x  
   acShellExecute("",URL,"","","")
end
acSetClipboardText("")
acSendKeys("^c")
acDelay(50)
if acGetClipboardText() ~= "" then
   acSearch(acGetClipboardText())
else local Keyword= acInputBox("Google 搜索", "请输入待搜索内容", "")
   if Keyword ~= "" then acSearch(Keyword) end
end
