:wxapi:`wx.setBackgroundColor`
============================================

.. function:: wx.setBackgroundColor(Object object)


   .. versionadded:: 2.1.0 低版本需做 :ref:`compatibility` 。

   动态设置窗口的背景色

   :param string backgroundColor: 否 窗口的背景色，必须为十六进制颜色值
   :param string backgroundColorTop: 否 顶部窗口的背景色，必须为十六进制颜色值，仅 iOS 支持
   :param string backgroundColorBottom: 否 底部窗口的背景色，必须为十六进制颜色值，仅 iOS 支持
   :param function success: 接口调用成功的回调函数
   :param function fail: 接口调用失败的回调函数
   :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）
   :示例代码:

     .. code::

       wx.setBackgroundColor({
         backgroundColor: '#ffffff', // 窗口的背景色为白色
       })

       wx.setBackgroundColor({
         backgroundColorTop: '#ffffff', // 顶部窗口的背景色为白色
         backgroundColorBottom: '#ffffff', // 底部窗口的背景色为白色
       })
