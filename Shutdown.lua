--Shutdown
--建议设置额外辅助键激活以免误关机，比如，左右键同时按下在划手势才激活，
--传统关机
--acRunProgram("c:\\windows\\system32\\shutdown.exe","-s -t 0",0,1) 
--win8混合关机
acRunProgram("c:\\windows\\system32\\shutdown.exe","-s -hybrid -t 0",0,0) 
