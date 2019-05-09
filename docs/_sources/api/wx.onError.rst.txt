:wxapi:`wx.onError`
========================

.. function:: wx.onError(callback)

   .. versionadded:: 2.1.2 低版本需做 :ref:`compatibility` 。

   监听小程序错误事件。如脚本错误或 API 调用报错等。该事件与 App.onError 的回调时机与参数一致。

   :param function callback(error): 小程序错误事件的回调函数

      - **error** (*string*) - 错误信息，包含堆栈
