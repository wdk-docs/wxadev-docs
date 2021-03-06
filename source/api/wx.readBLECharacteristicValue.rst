:wxapi:`wx.readBLECharacteristicValue`
===========================================

.. function:: wx.readBLECharacteristicValue(Object object)


   .. versionadded:: 1.1.0 低版本需做 :ref:`compatibility` 。

读取低功耗蓝牙设备的特征值的二进制数据值。注意：必须设备的特征值支持 read 才可以成功调用。

参数
Object object
属性	类型	默认值	必填	说明
deviceId	string		是	蓝牙设备 id
serviceId	string		是	蓝牙特征值对应服务的 uuid
characteristicId	string		是	蓝牙特征值的 uuid
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
并行调用多次会存在读失败的可能性。
接口读取到的信息需要在 onBLECharacteristicValueChange 方法注册的回调中获取。
示例代码
在开发者工具中预览效果

// 必须在这里的回调才能获取
wx.onBLECharacteristicValueChange(function (characteristic) {
  console.log('characteristic value comed:', characteristic)
})

wx.readBLECharacteristicValue({
  // 这里的 deviceId 需要已经通过 createBLEConnection 与对应设备建立链接
  deviceId,
  // 这里的 serviceId 需要在 getBLEDeviceServices 接口中获取
  serviceId,
  // 这里的 characteristicId 需要在 getBLEDeviceCharacteristics 接口中获取
  characteristicId,
  success(res) {
    console.log('readBLECharacteristicValue:', res.errCode)
  }
})
