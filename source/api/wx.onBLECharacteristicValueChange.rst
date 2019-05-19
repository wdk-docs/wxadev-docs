:wxapi:`wx.onBLECharacteristicValueChange`
===============

.. function:: wx.onBLECharacteristicValueChange(function callback)


   .. versionadded:: 1.1.0 低版本需做 :ref:`compatibility` 。

监听低功耗蓝牙设备的特征值变化事件。必须先启用 notifyBLECharacteristicValueChange 接口才能接收到设备推送的 notification。

参数
function callback
低功耗蓝牙设备的特征值变化事件的回调函数

参数
Object res
属性	类型	说明
deviceId	string	蓝牙设备 id
serviceId	string	蓝牙特征值对应服务的 uuid
characteristicId	string	蓝牙特征值的 uuid
value	ArrayBuffer	特征值最新的值
示例代码
在开发者工具中预览效果

// ArrayBuffer转16进制字符串示例
function ab2hex(buffer) {
  const hexArr = Array.prototype.map.call(
    new Uint8Array(buffer),
    function (bit) {
      return ('00' + bit.toString(16)).slice(-2)
    }
  )
  return hexArr.join('')
}
wx.onBLECharacteristicValueChange(function (res) {
  console.log(`characteristic ${res.characteristicId} has changed, now is ${res.value}`)
  console.log(ab2hex(res.value))
})
