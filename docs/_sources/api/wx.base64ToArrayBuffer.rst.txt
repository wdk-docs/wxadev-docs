:wxapi:`wx.base64ToArrayBuffer`
====================================

.. function:: wx.base64ToArrayBuffer(base64)

   .. versionadded:: 1.1.0 低版本需做兼容处理。

   .. deprecated:: 2.4.0 本接口停止维护

   将 Base64 字符串转成 ArrayBuffer 对象


   :param string base64: 要转化成 ArrayBuffer 对象的 Base64 字符串
   :return: ArrayBuffer ArrayBuffer 对象

   :示例:

     .. code::

       const base64 = 'CxYh'
       const arrayBuffer = wx.base64ToArrayBuffer(base64)
