:wxapi:`wx.checkIsSupportSoterAuthentication`
==================================================

.. function:: wx.checkIsSupportSoterAuthentication(Object object)


   .. versionadded:: 1.5.0 低版本需做 :ref:`compatibility` 。

获取本机支持的 SOTER 生物认证方式

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
supportMode	Array.<string>	该设备支持的可被SOTER识别的生物识别方式
res.supportMode 的合法值

值	说明	最低版本
fingerPrint	指纹识别
facial	人脸识别（暂未支持）
speech	声纹识别（暂未支持）
示例代码
wx.checkIsSupportSoterAuthentication({
  success(res) {
    // res.supportMode = [] 不具备任何被SOTER支持的生物识别方式
    // res.supportMode = ['fingerPrint'] 只支持指纹识别
    // res.supportMode = ['fingerPrint', 'facial'] 支持指纹识别和人脸识别
  }
})
