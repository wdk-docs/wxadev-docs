:wxapi:`wx.setNavigationBarTitle`
============================================

.. function:: wx.setNavigationBarTitle({title[, success][, fail][, complete]})

   动态设置当前页面的标题

   :param string title: 页面标题
   :param function success: 接口调用成功的回调函数
   :param function fail: 接口调用失败的回调函数
   :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）
   :示例代码:

      .. code::

        wx.setNavigationBarTitle({
          title: '当前页面'
        })
