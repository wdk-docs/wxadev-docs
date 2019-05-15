:wxapi:`wx.onLocalServiceFound`
=====================================

.. function:: wx.onLocalServiceFound(function callback)


基础库 2.4.0 开始支持，低版本需做兼容处理。

监听 mDNS 服务发现的事件

参数
function callback
mDNS 服务发现的事件的回调函数

参数
Object res
属性	类型	说明
serviceType	string	服务的类型
serviceName	string	服务的名称
ip	string	服务的 ip 地址
port	number	服务的端口
