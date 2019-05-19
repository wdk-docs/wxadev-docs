:wxapi:`wx.navigateBackMiniProgram`
=======================================

.. function:: wx.navigateBackMiniProgram(Object object)

   .. versionadded: 1.3.0 低版本需做 :ref:`compatibility` 。

   返回到上一个小程序。只有在当前小程序是被其他小程序打开时可以调用成功

   .. attention:: 微信客户端 iOS 6.5.9，Android 6.5.10 及以上版本支持

   :param Object extraData:		{}	否	需要返回给上一个小程序的数据，上一个小程序可在 App.onShow 中获取到这份数据。 详情。
   :param function success: 接口调用成功的回调函数
   :param function fail: 接口调用失败的回调函数
   :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）
   :示例:

   .. code::

     wx.navigateBackMiniProgram({
       extraData: {
         foo: 'bar'
       },
       success(res) {
       // 返回成功
       }
     })
