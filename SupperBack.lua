--SupperBack
local x = acGetWindowTitle(nil, gsx, gsy)
acDelay(50)
acSendKeys("{BROWSERBACK}") 
acDelay(50)
local y=acGetWindowTitle(nil, gsx, gsy)
if x==y then 
acSendKeys("{LEFT}")
end
