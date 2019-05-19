:wxapi:`wx.onBeaconServiceChange`
===============

.. function:: wx.onBeaconServiceChange(function callback)


   .. versionadded:: 1.2.0 低版本需做 :ref:`compatibility` 。

监听 iBeacon 服务状态变化事件

参数
function callback
iBeacon 服务状态变化事件的回调函数

参数
Object res
属性	类型	说明
available	boolean	服务目前是否可用
discovering	boolean	目前是否处于搜索状态
