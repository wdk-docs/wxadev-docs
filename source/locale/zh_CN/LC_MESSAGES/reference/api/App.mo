��          �                 {     '   �  (   �  m   �     X  _   _  J   �  y   
  �   �  �        �     �  �   �  �   J  �    w  �  {   6	  '   �	  (   �	  m   
     q
  _   x
  J   �
  y   #  �   �  �   4     �     �  �   �  �   c  �     :class:`App()` 必须在 ``app.js`` 中调用，必须调用且只能调用一次。不然会出现无法预期的后果。 :wxref:`注册小程序(App) <api/App>` 低版本需做 :ref:`compatibility` 。 关于小程序前后台的定义和小程序的运行机制，请参考 :ref:`operating-mechanism` 章节。 参数 开发者可以添加任意的函数或数据变量到 Object 参数中，用 this 可以访问 接受一个 Object 参数，其指定小程序的生命周期回调等。 监听小程序切后台。小程序从前台进入后台时触发。也可以使用 :func:`wx.onAppHide` 绑定监听。 监听小程序初始化。小程序初始化完成时触发，全局只触发一次。参数也可以使用 :func:`wx.getLaunchOptionsSync` 获取。 监听小程序启动或切前台。小程序启动，或从后台进入前台显示时触发。也可以使用 :func:`wx.onAppShow` 绑定监听。 示例 示例代码： 错误监听函数。小程序发生脚本错误或 API 调用报错时触发。也可以使用 :func:`wx.onError` 绑定监听。 页面不存在监听函数。 小程序要打开的页面不存在时触发。也可以使用 :func:`wx.onPageNotFound` 绑定监听。注意事项请参考 :func:`wx.onPageNotFound` 。 页面不存在监听函数。 小程序要打开的页面不存在时触发。也可以使用 :func:`wx.onPageNotFound` 绑定监听。注意事项请参考 :func:`wx.onPageNotFound` 。  .. versionadded:: 1.9.90 低版本需做 :ref:`compatibility` 。  示例代码：  .. code:: js    App({     onPageNotFound(res) {       wx.redirectTo({         url: 'pages/...'       }) // 如果是 tabbar 页面，请使用 wx.switchTab     }   }) Project-Id-Version: wxadev 
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
 :class:`App()` 必须在 ``app.js`` 中调用，必须调用且只能调用一次。不然会出现无法预期的后果。 :wxref:`注册小程序(App) <api/App>` 低版本需做 :ref:`compatibility` 。 关于小程序前后台的定义和小程序的运行机制，请参考 :ref:`operating-mechanism` 章节。 参数 开发者可以添加任意的函数或数据变量到 Object 参数中，用 this 可以访问 接受一个 Object 参数，其指定小程序的生命周期回调等。 监听小程序切后台。小程序从前台进入后台时触发。也可以使用 :func:`wx.onAppHide` 绑定监听。 监听小程序初始化。小程序初始化完成时触发，全局只触发一次。参数也可以使用 :func:`wx.getLaunchOptionsSync` 获取。 监听小程序启动或切前台。小程序启动，或从后台进入前台显示时触发。也可以使用 :func:`wx.onAppShow` 绑定监听。 示例 示例代码： 错误监听函数。小程序发生脚本错误或 API 调用报错时触发。也可以使用 :func:`wx.onError` 绑定监听。 页面不存在监听函数。 小程序要打开的页面不存在时触发。也可以使用 :func:`wx.onPageNotFound` 绑定监听。注意事项请参考 :func:`wx.onPageNotFound` 。 页面不存在监听函数。 小程序要打开的页面不存在时触发。也可以使用 :func:`wx.onPageNotFound` 绑定监听。注意事项请参考 :func:`wx.onPageNotFound` 。  .. versionadded:: 1.9.90 低版本需做 :ref:`compatibility` 。  示例代码：  .. code:: js    App({     onPageNotFound(res) {       wx.redirectTo({         url: 'pages/...'       }) // 如果是 tabbar 页面，请使用 wx.switchTab     }   }) 