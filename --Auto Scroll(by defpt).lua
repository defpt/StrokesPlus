--Auto Scroll(by defpt)
--鼠标移动到桌面左侧(大概一个Win8任务栏宽度)
function Timing()--计时器
   for i=0,60,1 do --请自行计算选择i的最大值(0和1中间那个值)
       if acGetMouseLocationX()<=60 then break --为了快速跳出循环采用了分步计时
       else acDelay(500) end --计时精度500ms
   end
end 
while acGetMouseLocationX()>60 do 
      Timing()
      if acGetMouseLocationX()<=60 then break
      else acSendKeys("{PGDN}") end    
end
--滚屏速度=计时精度*i的最大值
--默认设置计时精度理论值500ms，实际耗时应该会>500ms，PC的cpu不同，这个实际值也不同，不过应该差不太多
--所以如果设置30秒一屏的话，i最大值=(30*1000ms)/500ms=60
