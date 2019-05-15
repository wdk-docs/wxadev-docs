:wxapi:`wx.onGetWifiList`
===============

.. function:: wx.onGetWifiList(function callback)

基础库 1.6.0 开始支持，低版本需做兼容处理。

监听获取到 Wi-Fi 列表数据事件

参数
function callback
获取到 Wi-Fi 列表数据事件的回调函数

参数
Object res
属性	类型	说明
wifiList	Array.<WifiInfo>	Wi-Fi 列表数据
