:wxapi:`wx.onLocalServiceResolveFail`
==============================================

.. function:: wx.onLocalServiceResolveFail(function callback)


   .. versionadded:: 2.4.0 低版本需做 :ref:`compatibility` 。

监听 mDNS 服务解析失败的事件

参数
function callback
mDNS 服务解析失败的事件的回调函数

参数
Object res
属性	类型	说明
serviceType	string	服务的类型
serviceName	string	服务的名称
