:wxapi:`wx.getSetting`
============================================

.. function:: wx.getSetting(Object object)

基础库 1.2.0 开始支持，低版本需做兼容处理。

获取用户的当前设置。返回值中只会出现小程序已经向用户请求过的权限。

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
authSetting	AuthSetting	用户授权结果
示例代码
wx.getSetting({
  success(res) {
    console.log(res.authSetting)
    // res.authSetting = {
    //   "scope.userInfo": true,
    //   "scope.userLocation": true
    // }
  }
})
