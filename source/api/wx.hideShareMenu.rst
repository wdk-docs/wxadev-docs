:wxapi:`wx.hideShareMenu`
=================================

.. function:: wx.hideShareMenu({[success][, fail][, complete]})

   基础库 1.1.0 开始支持，低版本需做  :ref:`compatibility`

   隐藏转发按钮

   :param function success: 接口调用成功的回调函数
   :param function fail: 接口调用失败的回调函数
   :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）
   :示例:

     .. code::

        wx.hideShareMenu()
