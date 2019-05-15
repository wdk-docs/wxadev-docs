:wxapi:`wx.startBeaconDiscovery`
============================================

.. function:: wx.startBeaconDiscovery(Object object)

基础库 1.2.0 开始支持，低版本需做兼容处理。

开始搜索附近的 iBeacon 设备

参数
Object object
属性	类型	默认值	必填	说明
uuids	Array.<string>		是	iBeacon 设备广播的 uuid 列表
ignoreBluetoothAvailable	boolean	false	否	是否校验蓝牙开关，仅在 iOS 下有效
success	function		否	接口调用成功的回调函数
fail	function		否	接口调用失败的回调函数
complete	function		否	接口调用结束的回调函数（调用成功、失败都会执行）
错误
错误码	错误信息	说明
0	ok	正常
11000	unsupport	系统或设备不支持
11001	bluetooth service unavailable	蓝牙服务不可用
11002	location service unavailable	位置服务不可用
11003	already start	已经开始搜索
示例代码
wx.startBeaconDiscovery({
  success(res) { }
})
