:wxapi:`wx.connectSocket`
============================================

.. function:: wx.connectSocket(Object object)

   创建一个 WebSocket 连接。使用前请注意阅读相关说明。

参数
Object object
属性	类型	默认值	必填	说明	最低版本
url	string		是	开发者服务器 wss 接口地址
header	Object		否	HTTP Header，Header 中不能设置 Referer
protocols	Array.<string>		否	子协议数组	1.4.0
tcpNoDelay	boolean	false	否	建立 TCP 连接的时候的 TCP_NODELAY 设置	2.4.0
success	function		否	接口调用成功的回调函数
fail	function		否	接口调用失败的回调函数
complete	function		否	接口调用结束的回调函数（调用成功、失败都会执行）
返回值
SocketTask

   .. versionadded:: 1.7.0 低版本需做 :ref:`compatibility` 。

WebSocket 任务

并发数
1.7.0 及以上版本，最多可以同时存在 5 个 WebSocket 连接。
1.7.0 以下版本，一个小程序同时只能有一个 WebSocket 连接，如果当前已存在一个 WebSocket 连接，会自动关闭该连接，并重新创建一个 WebSocket 连接。
示例代码

.. code::

    wx.connectSocket({
      url: 'wss://example.qq.com',
      header: {
        'content-type': 'application/json'
      },
      protocols: ['protocol1'],
      method: 'GET'
    })
