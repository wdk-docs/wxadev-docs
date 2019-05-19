:wxapi:`wx.onBeaconUpdate`
===============

.. function:: wx.onBeaconUpdate(function callback)


   .. versionadded:: 1.2.0 低版本需做 :ref:`compatibility` 。

监听 iBeacon 设备更新事件

参数
function callback
iBeacon 设备更新事件的回调函数

参数
Object res
属性	类型	说明
beacons	Array.<IBeaconInfo>	当前搜寻到的所有 iBeacon 设备列表
