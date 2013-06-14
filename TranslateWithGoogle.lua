--Translate this with google (by defpt)
function acTranslate(x)
   local URL="http://translate.google.de/#auto/zh-CN/"..x  
   acShellExecute("",URL,"","","")
end
acSetClipboardText("")
acSendKeys("^c")
acDelay(50)
if acGetClipboardText() ~= "" then acTranslate(acGetClipboardText())
else local Text= acInputBox("Google 翻译","请输入待翻译文本","")
  if Text ~= "" then acTranslate(Text) end
end
