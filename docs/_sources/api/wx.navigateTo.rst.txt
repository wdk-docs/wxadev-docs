:wxapi:`wx.navigateTo`
============================

.. function:: wx.navigateTo({url[, success][, fail][, complete]})

   保留当前页面，跳转到应用内的某个页面。但是 **不能** 跳到 :envvar:`tabBar` 页面。
   使用 wx.navigateBack 可以返回到原页面。小程序中页面栈最多 **十** 层。

   :param string url: 需要跳转的应用内非 :envvar:`tabBar` 的页面的路径, 路径后可以带参数。参数与路径之间使用 ``?`` 分隔，参数键与参数值用 ``=`` 相连，不同参数用 ``&`` 分隔；如 ``'path?key=value&key2=value2'``
   :param function success: 接口调用成功的回调函数
   :param function fail: 接口调用失败的回调函数
   :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）

   :示例:

     .. code::

       wx.navigateTo({
         url: 'test?id=1'
       })
       // test.js
       Page({
         onLoad(option) {
           console.log(option.query)
         }
       })
