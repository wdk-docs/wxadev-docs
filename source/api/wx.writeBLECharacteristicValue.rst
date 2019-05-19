:wxapi:`wx.writeBLECharacteristicValue`
============================================

.. function:: wx.writeBLECharacteristicValue(Object object)


   .. versionadded:: 1.1.0 低版本需做 :ref:`compatibility` 。

向低功耗蓝牙设备特征值中写入二进制数据。注意：必须设备的特征值支持 write 才可以成功调用。

参数
Object object
属性	类型	默认值	必填	说明
deviceId	string		是	蓝牙设备 id
serviceId	string		是	蓝牙特征值对应服务的 uuid
characteristicId	string		是	蓝牙特征值的 uuid
value	ArrayBuffer		是	蓝牙设备特征值对应的二进制值
success	function		否	接口调用成功的回调函数
fail	function		否	接口调用失败的回调函数
complete	function		否	接口调用结束的回调函数（调用成功、失败都会执行）
错误
错误码	错误信息	说明
0	ok	正常
10000	not init	未初始化蓝牙适配器
10001	not available	当前蓝牙适配器不可用
10002	no device	没有找到指定设备
10003	connection fail	连接失败
10004	no service	没有找到指定服务
10005	no characteristic	没有找到指定特征值
10006	no connection	当前连接已断开
10007	property not support	当前特征值不支持此操作
10008	system error	其余所有系统上报的异常
10009	system not support	Android 系统特有，系统版本低于 4.3 不支持 BLE
10012	operate time out	连接超时
10013	invalid_data	连接 deviceId 为空或者是格式不正确
注意
并行调用多次会存在写失败的可能性。
小程序不会对写入数据包大小做限制，但系统与蓝牙设备会限制蓝牙4.0单次传输的数据大小，超过最大字节数后会发生写入错误，建议每次写入不超过20字节。
若单次写入数据过长，iOS 上存在系统不会有任何回调的情况（包括错误回调）。
安卓平台上，在调用 notifyBLECharacteristicValueChange 成功后立即调用 writeBLECharacteristicValue 接口，在部分机型上会发生 10008 系统错误
示例代码
在开发者工具中预览效果

// 向蓝牙设备发送一个0x00的16进制数据
const buffer = new ArrayBuffer(1)
const dataView = new DataView(buffer)
dataView.setUint8(0, 0)

wx.writeBLECharacteristicValue({
  // 这里的 deviceId 需要在 getBluetoothDevices 或 onBluetoothDeviceFound 接口中获取
  deviceId,
  // 这里的 serviceId 需要在 getBLEDeviceServices 接口中获取
  serviceId,
  // 这里的 characteristicId 需要在 getBLEDeviceCharacteristics 接口中获取
  characteristicId,
  // 这里的value是ArrayBuffer类型
  value: buffer,
  success(res) {
    console.log('writeBLECharacteristicValue success', res.errMsg)
  }
})
