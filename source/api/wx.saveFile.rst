:wxapi:`wx.saveFile`
==========================

.. function:: wx.saveFile(Object object)

保存文件到本地。注意：saveFile 会把临时文件移动，因此调用成功后传入的 tempFilePath 将不可用

参数
Object object
属性	类型	默认值	必填	说明
tempFilePath	string		是	需要保存的文件的临时路径
success	function		否	接口调用成功的回调函数
fail	function		否	接口调用失败的回调函数
complete	function		否	接口调用结束的回调函数（调用成功、失败都会执行）
object.success 回调函数
参数
Object res
属性	类型	说明
savedFilePath	number	存储后的文件路径
示例代码
wx.chooseImage({
  success(res) {
    const tempFilePaths = res.tempFilePaths
    wx.saveFile({
      tempFilePath: tempFilePaths[0],
      success(res) {
        const savedFilePath = res.savedFilePath
      }
    })
  }
})
注意
本地文件存储的大小限制为 10M
