:wxapi:`wx.getClipboardData`
============================================

.. function:: wx.getClipboardData(Object object)

   .. versionadded:: 1.1.0 低版本需做 :ref:`compatibility` 。

   获取系统剪贴板的内容

   :param function success({data}): 接口调用成功的回调函数

      - **data** (*string*) - 剪贴板的内容

   :param function fail: 接口调用失败的回调函数
   :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）

   :示例代码:

     .. code-block::

       wx.getClipboardData({
         success(res) {
           console.log(res.data)
         }
       })
