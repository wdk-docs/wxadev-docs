:wxapi:`wx.getBLEDeviceCharacteristics`
============================================

.. function:: wx.getBLEDeviceCharacteristics(Object object)


   .. versionadded:: 1.1.0 低版本需做 :ref:`compatibility` 。

获取蓝牙设备某个服务中所有特征值(characteristic)。

参数
Object object
属性	类型	默认值	必填	说明
deviceId	string		是	蓝牙设备 id
serviceId	string		是	蓝牙服务 uuid，需要使用 getBLEDeviceServices 获取
success	function		否	接口调用成功的回调函数
fail	function		否	接口调用失败的回调函数
complete	function		否	接口调用结束的回调函数（调用成功、失败都会执行）
object.success 回调函数
参数
Object res
属性	类型	说明
characteristics	Array.<Object>	设备特征值列表
res.characteristics 的结构

属性	类型	说明
uuid	string	蓝牙设备特征值的 uuid
properties	Object	该特征值支持的操作类型
properties 的结构

属性	类型	说明
read	boolean	该特征值是否支持 read 操作
write	boolean	该特征值是否支持 write 操作
notify	boolean	该特征值是否支持 notify 操作
indicate	boolean	该特征值是否支持 indicate 操作
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
示例代码
在开发者工具中预览效果

wx.getBLEDeviceCharacteristics({
  // 这里的 deviceId 需要已经通过 createBLEConnection 与对应设备建立链接
  deviceId,
  // 这里的 serviceId 需要在 getBLEDeviceServices 接口中获取
  serviceId,
  success(res) {
    console.log('device getBLEDeviceCharacteristics:', res.characteristics)
  }
})
