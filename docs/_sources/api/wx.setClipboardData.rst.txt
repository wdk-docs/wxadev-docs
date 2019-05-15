:wxapi:`wx.setClipboardData`
============================================

.. function:: wx.setClipboardData(Object object)

基础库 1.1.0 开始支持，低版本需做兼容处理。

设置系统剪贴板的内容

参数
Object object
属性	类型	默认值	必填	说明
data	string		是	剪贴板的内容
success	function		否	接口调用成功的回调函数
fail	function		否	接口调用失败的回调函数
complete	function		否	接口调用结束的回调函数（调用成功、失败都会执行）
示例代码
wx.setClipboardData({
  data: 'data',
  success(res) {
    wx.getClipboardData({
      success(res) {
        console.log(res.data) // data
      }
    })
  }
})
