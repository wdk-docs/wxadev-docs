:wxapi:`wx.downloadFile`
============================================

.. function:: wx.downloadFile(Object object)

   下载文件资源到本地。客户端直接发起一个 HTTPS GET 请求，返回文件的本地临时路径，单次下载允许的最大文件为 50MB。使用前请注意阅读相关说明。

.. attention:: 请在服务端响应的 header 中指定合理的 Content-Type 字段，以保证客户端正确处理文件类型。

参数
Object object
属性	类型	默认值	必填	说明	最低版本
url	string		是	下载资源的 url
header	Object		否	HTTP 请求的 Header，Header 中不能设置 Referer
filePath	string		否	指定文件下载后存储的路径	1.8.0
success	function		否	接口调用成功的回调函数
fail	function		否	接口调用失败的回调函数
complete	function		否	接口调用结束的回调函数（调用成功、失败都会执行）
object.success 回调函数
参数
Object res
属性	类型	说明
tempFilePath	string	临时文件路径。没传入 filePath 指定文件存储路径时会返回，下载后的文件会存储到一个临时文件
filePath	string	用户文件路径。传入 filePath 时会返回，跟传入的 filePath 一致
statusCode	number	开发者服务器返回的 HTTP 状态码
返回值
DownloadTask
基础库 1.4.0 开始支持，低版本需做兼容处理。

一个可以监听下载进度变化事件和取消下载的对象

示例代码

.. code::

    wx.downloadFile({
      url: 'https://example.com/audio/123', // 仅为示例，并非真实的资源
      success(res) {
        // 只要服务器有响应数据，就会把响应内容写入文件并进入 success 回调，业务需要自行判断是否下载到了想要的内容
        if (res.statusCode === 200) {
          wx.playVoice({
            filePath: res.tempFilePath
          })
        }
      }
    })
