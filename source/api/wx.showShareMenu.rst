:wxapi:`wx.showShareMenu`
============================================

.. function:: wx.showShareMenu([withShareTicket][, success][, fail][, complete])

   .. versionadded:: 1.1.0 低版本需做  :ref:`compatibility`

    显示当前页面的转发按钮

   :param boolean withShareTicket:		**false** 是否使用带 shareTicket 的转发详情
   :param function success: 接口调用成功的回调函数
   :param function fail: 接口调用失败的回调函数
   :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）

   :示例:

     .. code::

       wx.showShareMenu({
         withShareTicket: true
       })
