:wxapi:`wx.requestPayment`
==============================================

.. function:: wx.requestPayment(Object object)

   发起微信支付。了解更多信息，请查看微信支付接口文档

   :param string timeStamp: 是 时间戳，从 1970 年 1 月 1 日 00:00:00 至今的秒数，即当前的时间
   :param string nonceStr: 是 随机字符串，长度为32个字符以下
   :param string package: 是 统一下单接口返回的 prepay_id 参数值，提交格式如：prepay_id=***
   :param string signType: MD5 否 签名算法

      - **MD5** MD5
      - **HMAC-SHA256** HMAC-SHA256

   :param string paySign: 是 签名，具体签名方案参见 小程序支付接口文档
   :param function success: 接口调用成功的回调函数
   :param function fail: 接口调用失败的回调函数
   :param string complete: 接口调用结束的回调函数（调用成功、失败都会执行）

   :示例代码:

   .. code-block::

     wx.requestPayment({
       timeStamp: '',
       nonceStr: '',
       package: '',
       signType: 'MD5',
       paySign: '',
       success(res) { },
       fail(res) { }
     })
