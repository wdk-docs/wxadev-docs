:wxapi:`wx.getSavedFileInfo`
============================================

.. function:: wx.getSavedFileInfo(Object object)

获取本地文件的文件信息。此接口只能用于获取已保存到本地的文件，若需要获取临时文件信息，请使用 wx.getFileInfo() 接口。

参数
Object object
属性	类型	默认值	必填	说明
filePath	string		是	文件路径
success	function		否	接口调用成功的回调函数
fail	function		否	接口调用失败的回调函数
complete	function		否	接口调用结束的回调函数（调用成功、失败都会执行）
object.success 回调函数
参数
Object res
属性	类型	说明
size	number	文件大小，单位 B
createTime	number	文件保存时的时间戳，从1970/01/01 08:00:00 到该时刻的秒数
示例代码
wx.getSavedFileList({
  success(res) {
    console.log(res.fileList)
  }
})
