:wxapi:`wx.onMemoryWarning`
==================================

.. function:: wx.onMemoryWarning(function callback)

   .. version:: 2.0.2 开始支持，低版本需做兼容处理。

监听内存不足告警事件。

当 iOS/Android 向小程序进程发出内存警告时，触发该事件。触发该事件不意味小程序被杀，大部分情况下仅仅是告警，开发者可在收到通知后回收一些不必要资源避免进一步加剧内存紧张。

参数
function callback
内存不足告警事件的回调函数

参数
Object res
属性	类型	说明
level	number	内存告警等级，只有 Android 才有，对应系统宏定义
level 的合法值

值	说明	最低版本
5	TRIM_MEMORY_RUNNING_MODERATE
10	TRIM_MEMORY_RUNNING_LOW
15	TRIM_MEMORY_RUNNING_CRITICAL
示例代码

.. code::

  wx.onMemoryWarning(function () {
    console.log('onMemoryWarningReceive')
  })
