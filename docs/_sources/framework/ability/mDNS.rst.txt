局域网通信
=============

基础库 2.4.0 提供了 wx.startLocalServiceDiscovery 等一系列 mDNS API，可以用来获取局域网内提供 mDNS 服务的设备的 IP。 wx.request/wx.connectSocket/wx.uploadFile/wx.downloadFile 的 url 参数允许为 ${IP}:${PORT}/${PATH} 的格式，当且仅当 IP 与手机 IP 处在同一网段且不与本机 IP 相同（一般来说，就是同一局域网，如连接在同一个 wifi 下）时，请求/连接才会成功。

在这种情况下，不会进行安全域的校验，不要求必须使用 https/wss，也可以使用 http/ws。

wx.request({
  url: 'http://10.9.176.40:828'
  // 省略其他参数
})

wx.connectSocket({
  url: 'ws://10.9.176.42:828'
  // 省略其他参数
})