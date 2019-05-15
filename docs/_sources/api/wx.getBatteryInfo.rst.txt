:wxapi:`wx.getBatteryInfo`
============================================

.. function:: wx.getBatteryInfo(Object object)

获取设备电量。同步 API wx.getBatteryInfoSync 在 iOS 上不可用。

参数
Object object
属性	类型	默认值	必填	说明
success	function		否	接口调用成功的回调函数
fail	function		否	接口调用失败的回调函数
complete	function		否	接口调用结束的回调函数（调用成功、失败都会执行）
object.success 回调函数
参数
Object res
属性	类型	说明
level	string	设备电量，范围 1 - 100
isCharging	boolean	是否正在充电中
