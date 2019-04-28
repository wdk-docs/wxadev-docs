:wxapi:`wx.onError`
========================

.. function:: wx.onError(function callback)

基础库 2.1.2 开始支持，低版本需做 :ref:`compatibility` 。

监听小程序错误事件。如脚本错误或 API 调用报错等。该事件与 App.onError 的回调时机与参数一致。

参数
function callback
小程序错误事件的回调函数

参数
string error
错误信息，包含堆栈