:wxapi:`DownloadTask.onHeadersReceived`
============================================

DownloadTask.onHeadersReceived(function callback)
基础库 2.1.0 开始支持，低版本需做兼容处理。

监听 HTTP Response Header 事件。会比请求完成事件更早

参数
function callback
HTTP Response Header 事件的回调函数

参数
Object res
属性	类型	说明
header	Object	开发者服务器返回的 HTTP Response Header
