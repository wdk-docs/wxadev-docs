:wxapi:`wx.getBluetoothDevices`
============================================

.. function:: wx.getBluetoothDevices(Object object)

基础库 1.1.0 开始支持，低版本需做兼容处理。

获取在蓝牙模块生效期间所有已发现的蓝牙设备。包括已经和本机处于连接状态的设备。

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
devices	Array.<Object>	uuid 对应的的已连接设备列表
res.devices 的结构

属性	类型	说明
name	string	蓝牙设备名称，某些设备可能没有
deviceId	string	用于区分设备的 id
RSSI	number	当前蓝牙设备的信号强度
advertisData	ArrayBuffer	当前蓝牙设备的广播数据段中的 ManufacturerData 数据段。
advertisServiceUUIDs	Array.<string>	当前蓝牙设备的广播数据段中的 ServiceUUIDs 数据段
localName	string	当前蓝牙设备的广播数据段中的 LocalName 数据段
serviceData	Object	当前蓝牙设备的广播数据段中的 ServiceData 数据段
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
wx.getBluetoothDevices({
  success(res) {
    console.log(res)
    if (res.devices[0]) {
      console.log(ab2hex(res.devices[0].advertisData))
    }
  }
})
注意事项
该接口获取到的设备列表为蓝牙模块生效期间所有搜索到的蓝牙设备，若在蓝牙模块使用流程结束后未及时调用 wx.closeBluetoothAdapter 释放资源，会存在调用该接口会返回之前的蓝牙使用流程中搜索到的蓝牙设备，可能设备已经不在用户身边，无法连接。
蓝牙设备在被搜索到时，系统返回的 name 字段一般为广播包中的 LocalName 字段中的设备名称，而如果与蓝牙设备建立连接，系统返回的 name 字段会改为从蓝牙设备上获取到的 GattName。若需要动态改变设备名称并展示，建议使用 localName 字段。
