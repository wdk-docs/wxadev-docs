:wxapi:`wx.checkIsSoterEnrolledInDevice`
============================================

.. function:: wx.checkIsSoterEnrolledInDevice(Object object)


   .. versionadded:: 1.6.0 低版本需做 :ref:`compatibility` 。

获取设备内是否录入如指纹等生物信息的接口

参数
Object object
属性	类型	默认值	必填	说明
checkAuthMode	string		是	认证方式
success	function		否	接口调用成功的回调函数
fail	function		否	接口调用失败的回调函数
complete	function		否	接口调用结束的回调函数（调用成功、失败都会执行）
object.checkAuthMode 的合法值

值	说明	最低版本
fingerPrint	指纹识别
facial	人脸识别
speech	声纹识别（暂未支持）
object.success 回调函数
参数
Object res
属性	类型	说明
isEnrolled	boolean	是否已录入信息
errMsg	string	错误信息
示例代码
wx.checkIsSoterEnrolledInDevice({
  checkAuthMode: 'fingerPrint',
  success(res) {
    console.log(res.isEnrolled)
  }
})
