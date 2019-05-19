:wxapi:`wx.onBLEConnectionStateChange`
===============

.. function:: wx.onBLEConnectionStateChange(function callback)


   .. versionadded:: 1.1.1 低版本需做 :ref:`compatibility` 。

监听低功耗蓝牙连接状态的改变事件。包括开发者主动连接或断开连接，设备丢失，连接异常断开等等

参数
function callback
低功耗蓝牙连接状态的改变事件的回调函数

参数
Object res
属性	类型	说明
deviceId	string	蓝牙设备ID
connected	boolean	是否处于已连接状态
示例代码
在开发者工具中预览效果

wx.onBLEConnectionStateChange(function (res) {
  // 该方法回调中可以用于处理连接意外断开等异常情况
  console.log(`device ${res.deviceId} state has changed, connected: ${res.connected}`)
})
