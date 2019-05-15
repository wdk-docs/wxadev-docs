:wxapi:`wx.openDocument`
==============================

.. function:: wx.openDocument(Object object)

新开页面打开文档

参数
Object object
属性	类型	默认值	必填	说明	最低版本
filePath	string		是	文件路径，可通过 downloadFile 获得
fileType	string		否	文件类型，指定文件类型打开文件	1.4.0
success	function		否	接口调用成功的回调函数
fail	function		否	接口调用失败的回调函数
complete	function		否	接口调用结束的回调函数（调用成功、失败都会执行）
object.fileType 的合法值

值	说明	最低版本
doc	doc 格式
docx	docx 格式
xls	xls 格式
xlsx	xlsx 格式
ppt	ppt 格式
pptx	pptx 格式
pdf	pdf 格式
示例代码
wx.downloadFile({
  // 示例 url，并非真实存在
  url: 'http://example.com/somefile.pdf',
  success(res) {
    const filePath = res.tempFilePath
    wx.openDocument({
      filePath,
      success(res) {
        console.log('打开文档成功')
      }
    })
  }
})
