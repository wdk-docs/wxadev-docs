:wxapi:`wx.previewImage ☁️ <wx.previewImage>`
======================================================

.. function:: wx.previewImage({urls[,current][,success][, fail][, complete]})

   .. versionadded:: 2.2.3 起支持云文件ID。

   在新页面中全屏预览图片。预览的过程中用户可以进行保存图片、发送给朋友等操作。

   :param Array.<string> urls: 需要预览的图片链接列表
   :param string current: **urls 的第一张** 当前显示图片的链接
   :param function success: 接口调用成功的回调函数
   :param function fail: 接口调用失败的回调函数
   :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）

   :示例:

     .. code::

       wx.previewImage({
         current: '', // 当前显示图片的http链接
         urls: [] // 需要预览的图片http链接列表
       })
