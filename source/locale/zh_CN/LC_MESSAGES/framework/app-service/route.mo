��    ?                      X     /   f  <   �  *   �     �  "         #     :     <     P     R  $   k     �  $   �  $   �  2   �          &  
   6  �   A     �     �     �     �  5     4   9  2   n  4   �  3   �  	   
       B   0  B   s  !   �  L   �  F   %	  $   l	     �	     �	  s   �	     %
     6
     U
  "   b
      �
     �
      �
     �
  J        Q     a     q  	   ~  	   �  *   �  /   �  *   �  |     	   �     �     �     �  w  �  X   D  /   �  <   �  *   
     5  "   7     Z     q     s     �     �  $   �     �  $   �  $   �  2        F     ]  
   m  �   x               *     1  5   :  4   p  2   �  4   �  3     	   A     K  B   g  B   �  !   �  L     F   \  $   �     �     �  s   �     \     m     �  "   �      �     �      �       J   =     �     �     �  	   �  	   �  *   �  /   �  *   $  |   O  	   �     �     �     �   :func:`wx.navigateTo` , :func:`wx.redirectTo` 只能打开非 :envvar:`tabBar` 页面。 :func:`wx.reLaunch` 可以打开任意页面。 :func:`wx.switchTab` 只能打开 :envvar:`tabBar` 页面。 :wxfrwk:`页面路由 <app-service/route>` A A.onHide(), B.onLoad(), B.onShow() A.onHide(), B.onShow() B B（再次打开） C C.onUnload(), A.onShow() C.onUnload(), B.onLoad(), B.onShow() D D.onUnload(), A.onLoad(), A.onShow() D.onUnload(), B.onLoad(), B.onShow() D.onUnload(), C.onUnload(), B.onLoad(), B.onShow() D（从转发进入） Nothing happend Tab 切换 Tab 切换对应的生命周期（以 A、B 页面为 Tabbar 页面，C 是从 A 页面打开的页面，D 页面是从 C 页面打开的页面为例）： onHide onLoad, onShow onShow onUnload 使用组件 ``<navigator open-type="navigateBack">`` 使用组件 ``<navigator open-type="navigateTo"/>`` 使用组件 ``<navigator open-type="reLaunch"/>`` 使用组件 ``<navigator open-type="redirectTo"/>`` 使用组件 ``<navigator open-type="switchTab"/>`` 初始化 各种情况请参考下表 在小程序中所有页面的路由全部由框架进行管理。 对于路由的触发方式以及页面生命周期函数如下： 小程序打开的第一个页面 开发者可以使用 :func:`getCurrentPages` 函数获取当前页面栈。 当前页面    路由后页面   触发的生命周期（按顺序） 当前页面出栈，新页面入栈 打开新页面 新页面入栈 框架以栈的形式维护了当前的所有页面。 当发生路由切换的时候，页面栈的表现如下： 用户切换 Tab 用户按左上角返回按钮 触发时机 调用 API :func:`wx.navigateBack` 调用 API :func:`wx.navigateTo` 调用 API :func:`wx.reLaunch` 调用 API :func:`wx.redirectTo` 调用 API :func:`wx.switchTab` 调用页面路由带的参数可以在目标页面的 onLoad 中获取。 路由前页面 路由后页面 路由方式 重加载 重启动 页面不断出栈，直到目标返回页 页面全部出栈，只留下新的 Tab 页面 页面全部出栈，只留下新的页面 页面底部的 tabBar 由页面决定，即只要是定义为 :envvar:`tabBar` 的页面，底部都有 :envvar:`tabBar。` 页面栈 页面栈表现 页面返回 页面重定向 Project-Id-Version: wxadev 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-05-09 22:55+0800
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_CN
Language-Team: zh_CN <LL@li.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 :func:`wx.navigateTo` , :func:`wx.redirectTo` 只能打开非 :envvar:`tabBar` 页面。 :func:`wx.reLaunch` 可以打开任意页面。 :func:`wx.switchTab` 只能打开 :envvar:`tabBar` 页面。 :wxfrwk:`页面路由 <app-service/route>` A A.onHide(), B.onLoad(), B.onShow() A.onHide(), B.onShow() B B（再次打开） C C.onUnload(), A.onShow() C.onUnload(), B.onLoad(), B.onShow() D D.onUnload(), A.onLoad(), A.onShow() D.onUnload(), B.onLoad(), B.onShow() D.onUnload(), C.onUnload(), B.onLoad(), B.onShow() D（从转发进入） Nothing happend Tab 切换 Tab 切换对应的生命周期（以 A、B 页面为 Tabbar 页面，C 是从 A 页面打开的页面，D 页面是从 C 页面打开的页面为例）： onHide onLoad, onShow onShow onUnload 使用组件 ``<navigator open-type="navigateBack">`` 使用组件 ``<navigator open-type="navigateTo"/>`` 使用组件 ``<navigator open-type="reLaunch"/>`` 使用组件 ``<navigator open-type="redirectTo"/>`` 使用组件 ``<navigator open-type="switchTab"/>`` 初始化 各种情况请参考下表 在小程序中所有页面的路由全部由框架进行管理。 对于路由的触发方式以及页面生命周期函数如下： 小程序打开的第一个页面 开发者可以使用 :func:`getCurrentPages` 函数获取当前页面栈。 当前页面    路由后页面   触发的生命周期（按顺序） 当前页面出栈，新页面入栈 打开新页面 新页面入栈 框架以栈的形式维护了当前的所有页面。 当发生路由切换的时候，页面栈的表现如下： 用户切换 Tab 用户按左上角返回按钮 触发时机 调用 API :func:`wx.navigateBack` 调用 API :func:`wx.navigateTo` 调用 API :func:`wx.reLaunch` 调用 API :func:`wx.redirectTo` 调用 API :func:`wx.switchTab` 调用页面路由带的参数可以在目标页面的 onLoad 中获取。 路由前页面 路由后页面 路由方式 重加载 重启动 页面不断出栈，直到目标返回页 页面全部出栈，只留下新的 Tab 页面 页面全部出栈，只留下新的页面 页面底部的 tabBar 由页面决定，即只要是定义为 :envvar:`tabBar` 的页面，底部都有 :envvar:`tabBar。` 页面栈 页面栈表现 页面返回 页面重定向 