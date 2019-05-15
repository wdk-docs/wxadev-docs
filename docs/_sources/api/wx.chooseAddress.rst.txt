:wxapi:`wx.chooseAddress`
============================================

.. function:: wx.chooseAddress(Object object)

基础库 1.1.0 开始支持，低版本需做兼容处理。

调用前需要 用户授权 scope.address

获取用户收货地址。调起用户编辑收货地址原生界面，并在编辑完成后返回用户选择的地址。

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
userName	string	收货人姓名
postalCode	string	邮编
provinceName	string	国标收货地址第一级地址
cityName	string	国标收货地址第一级地址
countyName	string	国标收货地址第一级地址
detailInfo	string	详细收货地址信息
nationalCode	string	收货地址国家码
telNumber	string	收货人手机号码
errMsg	string	错误信息
示例代码
在开发者工具中预览效果

wx.chooseAddress({
  success(res) {
    console.log(res.userName)
    console.log(res.postalCode)
    console.log(res.provinceName)
    console.log(res.cityName)
    console.log(res.countyName)
    console.log(res.detailInfo)
    console.log(res.nationalCode)
    console.log(res.telNumber)
  }
})
