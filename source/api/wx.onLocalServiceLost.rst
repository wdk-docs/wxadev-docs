:wxapi:`wx.onLocalServiceLost`
=====================================

.. function:: wx.onLocalServiceLost(function callback)

基础库 2.4.0 开始支持，低版本需做兼容处理。

监听 mDNS 服务离开的事件

参数
function callback
mDNS 服务离开的事件的回调函数

参数
Object res
属性	类型	说明
serviceType	string	服务的类型
serviceName	string	服务的名称
