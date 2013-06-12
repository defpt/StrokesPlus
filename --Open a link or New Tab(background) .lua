--Open a link or New Tab(background) 
acConsumePhysicalInput(1)
acMouseMove(gsx,gsy)
acDelay(20)
if acGetMouseCursorType() == "HAND" then
   acMouseClick(gsx, gsy, 1, 1, 1) 	
else
   acSendKeys("^t")
end
acConsumePhysicalInput(0)
