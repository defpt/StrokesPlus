--Scroll with Mouse
--by defpt
--划手势激活，光标移到滚动条滑块即可拖动鼠标进行自由滚动，鼠标移到桌面底部退出激活状态
function acScroll()--滚动状态
   if acGetExecutableName(nil, gsx, gsy) == "iexplore.exe" then --IE总是独立特行
      while acGetPixelRByPoint(x,y)..acGetPixelBByPoint(x,y)..acGetPixelGByPoint(x,y) ~= "205205205" do 
         x=acGetMouseLocationX()
         y=acGetMouseLocationY()
      end
   else while acGetPixelRByPoint(x,y)..acGetPixelBByPoint(x,y)..acGetPixelGByPoint(x,y) ~= "166166166" do
           x=acGetMouseLocationX()
           y=acGetMouseLocationY()
        end
   end
   acMouseClick(acGetMouseLocationX(),acGetMouseLocationY(),2,1,0)
   while acGetMouseLocationY()<796 do d=acGetWindowRight(nil,gsx,gsy) - acGetMouseLocationX()
      if d > 32 then break
      else acDelay(500) end
   end
   acMouseClick(acGetMouseLocationX(),acGetMouseLocationY(),2,0,1)
   waiting()
end

function waiting()--非滚动等待状态
   while acGetMouseLocationY()<796 do d=acGetWindowRight(nil,gsx,gsy) - acGetMouseLocationX()
      if d<=32 then break
      else acDelay(500) end
   end
   main()
end

function main()
   if acGetMouseLocationY()<796 then acScroll() end
end
main()

--d=距离，鼠标距离右边框两个滚动条宽度（32px）
--796是我显示器（1280x800）底部，请自行设置该值
--500此值设置检测当前鼠标位置的频率
