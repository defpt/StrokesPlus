--Search in website
--by defpt
acSetClipboardText("")
acSendKeys("^c")
acDelay(50)
local text=acGetClipboardText()
if text=="" then 
   text=acInputBox("Google 站内搜索", "请输入待搜索内容", "") 
end
acSendKeys("%d")
acSendKeys("^c")
acDelay(50)
local domain=string.gsub(acGetClipboardText(),"https?://(.-)%/.*","%1")
acDelay(50)
local url="https://www.google.de/search?q=site:"..domain.." "..text
acDelay(50)
acShellExecute("",url,"","","")
