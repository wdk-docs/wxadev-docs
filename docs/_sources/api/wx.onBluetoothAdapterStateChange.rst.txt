:wxapi:`wx.onBluetoothAdapterStateChange`
===============

.. function:: wx.onBluetoothAdapterStateChange(function callback)

基础库 1.1.0 开始支持，低版本需做兼容处理。

监听蓝牙适配器状态变化事件

参数
function callback
蓝牙适配器状态变化事件的回调函数

参数
Object res
属性	类型	说明
available	boolean	蓝牙适配器是否可用
discovering	boolean	蓝牙适配器是否处于搜索状态
示例代码
在开发者工具中预览效果

wx.onBluetoothAdapterStateChange(function (res) {
  console.log('adapterState changed, now is', res)
})
