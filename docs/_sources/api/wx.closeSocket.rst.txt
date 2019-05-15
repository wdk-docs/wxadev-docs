:wxapi:`wx.closeSocket`
============================================

.. function:: wx.closeSocket(Object object)

关闭 WebSocket 连接

参数
Object object
属性	类型	默认值	必填	说明
code	number	1000（表示正常关闭连接）	否	一个数字值表示关闭连接的状态号，表示连接被关闭的原因。
reason	string		否	一个可读的字符串，表示连接被关闭的原因。这个字符串必须是不长于 123 字节的 UTF-8 文本（不是字符）。
success	function		否	接口调用成功的回调函数
fail	function		否	接口调用失败的回调函数
complete	function		否	接口调用结束的回调函数（调用成功、失败都会执行）
示例代码
wx.connectSocket({
  url: 'test.php'
})

// 注意这里有时序问题，
// 如果 wx.connectSocket 还没回调 wx.onSocketOpen，而先调用 wx.closeSocket，那么就做不到关闭 WebSocket 的目的。
// 必须在 WebSocket 打开期间调用 wx.closeSocket 才能关闭。
wx.onSocketOpen(function () {
  wx.closeSocket()
})

wx.onSocketClose(function (res) {
  console.log('WebSocket 已关闭！')
})
