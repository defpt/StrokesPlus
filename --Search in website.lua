--Search in website(by defpt)
function acINSearch(x)
   acSetClipboardText("") --clear Clipboard
   acSendKeys("%d") --focus on the urlbar
   acSendKeys("^c")
   acDelay(25)
   local url = acGetClipboardText()
   local domain=string.gsub(url,"https?://(.-)%/.*","%1") --Get Domainname
   acDelay(25)
   local newurl="https://www.google.com/search?hl=zh-CN&client=opera&q=site:"..domain.."%20"..x --Search engine
   acSetClipboardText(newurl)
   acSendKeys("^v")
   acSendKeys("{DELAY=25}%{ENTER}")
end
acSetClipboardText("")
acSendKeys("^c")
acDelay(50)
local text=acGetClipboardText()
if text ~= "" then acINSearch(text)
else local inputString= acInputBox("Google 站内搜索", "请输入待搜索内容", "")
   if inputString ~= "" then acINSearch(inputString) end
end