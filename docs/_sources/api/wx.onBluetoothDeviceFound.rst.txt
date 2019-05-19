:wxapi:`wx.onBluetoothDeviceFound`
===============

.. function:: wx.onBluetoothDeviceFound(function callback)


   .. versionadded:: 1.1.0 低版本需做 :ref:`compatibility` 。

监听寻找到新设备的事件

参数
function callback
寻找到新设备的事件的回调函数

参数
Object res
属性	类型	说明
devices	Array.<Object>	新搜索到的设备列表
devices 的结构

属性	类型	说明
name	string	蓝牙设备名称，某些设备可能没有
deviceId	string	用于区分设备的 id
RSSI	number	当前蓝牙设备的信号强度
advertisData	ArrayBuffer	当前蓝牙设备的广播数据段中的 ManufacturerData 数据段。
advertisServiceUUIDs	Array.<string>	当前蓝牙设备的广播数据段中的 ServiceUUIDs 数据段
localName	string	当前蓝牙设备的广播数据段中的 LocalName 数据段
serviceData	Object	当前蓝牙设备的广播数据段中的 ServiceData 数据段
注意
若在 wx.onBluetoothDeviceFound 回调了某个设备，则此设备会添加到 wx.getBluetoothDevices 接口获取到的数组中。
示例代码
在开发者工具中预览效果

// ArrayBuffer转16进度字符串示例
function ab2hex(buffer) {
  const hexArr = Array.prototype.map.call(
    new Uint8Array(buffer),
    function (bit) {
      return ('00' + bit.toString(16)).slice(-2)
    }
  )
  return hexArr.join('')
}
wx.onBluetoothDeviceFound(function (devices) {
  console.log('new device list has founded')
  console.dir(devices)
  console.log(ab2hex(devices[0].advertisData))
})
注意
安卓下部分机型需要有位置权限才能搜索到设备，需留意是否开启了位置权限
