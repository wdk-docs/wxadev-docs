:wxapi:`wx.getExtConfig`
============================================

.. function:: wx.getExtConfig(Object object)


   .. versionadded:: 1.1.0 低版本需做 :ref:`compatibility` 。

获取第三方平台自定义的数据字段。

参数
Object object
属性	类型	默认值	必填	说明
success	function		否	接口调用成功的回调函数
fail	function		否	接口调用失败的回调函数
complete	function		否	接口调用结束的回调函数（调用成功、失败都会执行）
object.success 回调函数
参数
Object res
属性	类型	说明
extConfig	Object	第三方平台自定义的数据
Tips
本接口暂时无法通过 wx.canIUse 判断是否兼容，开发者需要自行判断 wx.getExtConfig 是否存在来兼容
if (wx.getExtConfig) {
  wx.getExtConfig({
    success(res) {
      console.log(res.extConfig)
    }
  })
}
