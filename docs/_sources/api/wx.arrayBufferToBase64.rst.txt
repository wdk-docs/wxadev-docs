:wxapi:`wx.arrayBufferToBase64`
=======================================

.. function:: wx.arrayBufferToBase64(arrayBuffer)

   .. versionadded:: 1.1.0 低版本需做兼容处理。

   .. deprecated:: 2.4.0 本接口停止维护

   将 ArrayBuffer 对象转成 Base64 字符串

   :param ArrayBuffer arrayBuffer: 要转换成 Base64 字符串的 ArrayBuffer 对象
   :return: string Base64 字符串
   :示例:

     .. code::

      const arrayBuffer = new Uint8Array([11, 22, 33])
      const base64 = wx.arrayBufferToBase64(arrayBuffer)
