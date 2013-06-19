#StrokesPlus 说明文档

StrokesPlus 是我用过的最好的完美支持win8 的全局手势了。下面给出一些相关链接 [StrokesPlus官网](
http://www.strokesplus.com/)、[官方下载地址](http://www.strokesplus.com/forum/forum.asp?FORUM_ID=6)、[StrokesPlus详细定制教程卡饭贴](http://bbs.kafan.cn/thread-1410275-1-1.html)、[我的配置文件说明卡饭贴](http://bbs.kafan.cn/thread-1427048-1-1.html)
**下面是我的自用设置以及一些具体代码**

###我的配置文件
+ [StrokesPlus.lua](https://github.com/defpt/StrokesPlus/blob/master/StrokesPlus.lua) 是全局执行的脚本文件
+ [StrokesPlus.xml](https://github.com/defpt/StrokesPlus/blob/master/StrokesPlus.xml) 是所有自定义手势设置
+ [RenameBackup.bat](https://github.com/defpt/StrokesPlus/blob/master/RenameBackup.bat) 是备份文件重命名为原文件的批处理

###主要自写代码有如下几个：

+ [AutoScroll](https://github.com/defpt/StrokesPlus/blob/master/AutoScroll.lua) 自动滚屏，每次滚动一个屏幕。**要手势激活**，默认鼠标移动到桌面左侧(大概一个Win8任务栏宽度)可退出激活状态，可自己按需修改
+ [Clip2OneNote](https://github.com/defpt/StrokesPlus/blob/master/Clip2OneNote) 发送到 OneNote 包括两个版本，一个要设置路径，一个不需设置路径
+ [OpenInGoogleWebeCache](https://github.com/defpt/StrokesPlus/blob/master/OpenInGoogleWebeCache.lua) 用谷歌快照功能打开网页
+ [OpenLink_NewTab](https://github.com/defpt/StrokesPlus/blob/master/OpenLink_NewTab.lua) 新建标签或者新标签后台打开链接
+ [OpenLink_SearchText](https://github.com/defpt/StrokesPlus/blob/master/OpenLink_SearchText.lua)  搜索选中内容或者新标签前台打开链接
+ [OpenWithOtherBrowser](https://github.com/defpt/StrokesPlus/blob/master/OpenWithOtherBrowser.lua) 使用别的浏览器打开当前网页，这里用IE举例，其它任意浏览器皆可
+ [ScrollWithMouse](https://github.com/defpt/StrokesPlus/blob/master/ScrollwithMouse.lua) 划手势激活，光标移到滚动条滑块即可拖动鼠标进行自由滚动，鼠标移到桌面底部退出激活状态，可自己按需修改。**特别注意由于采用了滚动块颜色判定，***所以如过使用自定义滚动条要自己修改颜色代码*
+ [SearchInWebsite](https://github.com/defpt/StrokesPlus/blob/master/Searchinwebsite.lua) 站内搜索，不知道什么原因，只能用于Firefox，默认用的是谷歌引擎
+ [SearchWithGoogle](https://github.com/defpt/StrokesPlus/blob/master/SearchWithGoogle.lua) 谷歌搜索，**全局搜索利器**，在记事本、word等文本编辑器也可使用
+ [Shutdown](https://github.com/defpt/StrokesPlus/blob/master/Shutdown.lua) 关机
+ [SupperForward](https://github.com/defpt/StrokesPlus/blob/master/SupperForward.lua)、[SupperBack](https://github.com/defpt/StrokesPlus/blob/master/SupperBack.lua) 前进、后退，外加了模拟键盘左右方向键
+ [TranslateWithGoogle](https://github.com/defpt/StrokesPlus/blob/master/TranslateWithGoogle.lua) 谷歌翻译，**全局利器**，默认自动识别翻译为中文，可自己设置默认翻译语言
+ [JSTools](https://github.com/defpt/StrokesPlus/blob/master/JSTools.lua)  Firefox上调用小书签代码的模板,不过要配合启用地址栏可运行代码才行，可通过扩展（比如tab_utilities） 或脚本（uc脚本）总在当前标签页打开Bookmarklet，代码为：

          eval("openLinkIn = " + openLinkIn.toString().replace(/(?=if \(where == "save"\))/, 'if (url.substr(0, 11) == "javascript:") where = "current";').replace(/(?=var loadInBackground)/, 'if (w.gBrowser.currentURI.spec == "about:blank" && !w.gBrowser.mCurrentTab.hasAttribute("busy")) where = "current";'));
      
###所有功能效果图
![](https://github.com/defpt/StrokesPlus/blob/master/StrokesPlus.png?raw=true)