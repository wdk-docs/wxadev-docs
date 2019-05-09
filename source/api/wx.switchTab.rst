:wxapi:`wx.switchTab`
============================================

.. function:: wx.switchTab({url[, success][, fail][, complete]})

   跳转到 tabBar 页面，并关闭其他所有非 tabBar 页面

   :param string url: 需要跳转的 tabBar 页面的路径（需在 app.json 的 tabBar 字段定义的页面），路径后不能带参数。
   :param function success: 接口调用成功的回调函数
   :param function fail: 接口调用失败的回调函数
   :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）

   :示例:

     .. code:: json

       {
         "tabBar": {
           "list": [
             {
               "pagePath": "index",
               "text": "首页"
             },
             {
               "pagePath": "other",
               "text": "其他"
             }
           ]
         }
       }

     .. code::

       wx.switchTab({
         url: '/index'
       })
