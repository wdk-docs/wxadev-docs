:wxapi:`wx.startLocalServiceDiscovery`
============================================

.. function:: wx.startLocalServiceDiscovery(Object object)

   .. versionadded:: 2.4.0 低版本需做兼容处理。

   开始搜索局域网下的 mDNS 服务。搜索的结果会通过 :func:`wx.onLocalService` 事件返回。

参数
Object object
属性	类型	默认值	必填	说明
serviceType	string		是	要搜索的服务类型
success	function		否	接口调用成功的回调函数
fail	function		否	接口调用失败的回调函数
complete	function		否	接口调用结束的回调函数（调用成功、失败都会执行）

object.fail 回调函数
参数
Object res
属性	类型	说明
errMsg	string	错误信息

res.errMsg 的合法值

值	说明	最低版本
invalid param	serviceType 为空
scan task already exist	在当前 startLocalServiceDiscovery 发起的搜索未停止的情况下，再次调用 startLocalServiceDiscovery
示例代码

.. code::

  wx.startLocalServiceDiscovery({
    // 当前手机所连的局域网下有一个 _http._tcp. 类型的服务
    serviceType: '_http._tcp.',
    success: console.log,
    fail: console.log
  })

.. attention::

   :func:`wx.startLocalServiceDiscovery` 是一个消耗性能的行为，
   开始 30 秒后会自动 stop 并执行 :func:`wx.onLocalServiceDiscoveryStop` 注册的回调函数。
   在调用 :func:`wx.startLocalServiceDiscovery` 后，
   在这次搜索行为停止后才能发起下次 :func:`wx.startLocalServiceDiscovery`。
   停止本次搜索行为的操作包括调用 :func:`wx.stopLocalServiceDiscovery` 和 30 秒后系统自动 stop 本次搜索。
