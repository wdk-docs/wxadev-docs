:wxapi:`wx.reLaunch`
==================================

.. function:: wx.reLaunch({url[, success][, fail][, complete]})

   基础库 1.1.0 开始支持，低版本需做兼容处理。

   关闭所有页面，打开到应用内的某个页面

   :param string url: 需要跳转的应用内页面路径，路径后可以带参数。参数与路径之间使用?分隔，参数键与参数值用=相连，不同参数用&分隔；如 'path?key=value&key2=value2'
   :param function success: 接口调用成功的回调函数
   :param function fail: 接口调用失败的回调函数
   :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）

   :示例:

     .. code::

       wx.reLaunch({
         url: 'test?id=1'
       })
       // test Page({ onLoad (option) { console.log(option.query) } })
