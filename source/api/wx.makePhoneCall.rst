:wxapi:`wx.makePhoneCall`
=================================


.. function:: wx.makePhoneCall(Object object)

   拨打电话

   :param string phoneNumber: 是	需要拨打的电话号码
   :param function success: 接口调用成功的回调函数
   :param function fail: 接口调用失败的回调函数
   :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）
   :示例代码:
      .. code-block::

         wx.makePhoneCall({
           phoneNumber: '1340000' // 仅为示例，并非真实的电话号码
         })
