:wxapi:`wx.chooseInvoiceTitle`
============================================

.. function:: wx.chooseInvoiceTitle(Object object)


   .. versionadded:: 1.5.0 低版本需做 :ref:`compatibility` 。

调用前需要 用户授权 scope.invoiceTitle

选择用户的发票抬头。当前小程序必须关联一个公众号，且这个公众号是完成了微信认证的，才能调用 chooseInvoiceTitle。

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
type	string	抬头类型
title	string	抬头名称
taxNumber	string	抬头税号
companyAddress	string	单位地址
telephone	string	手机号码
bankName	string	银行名称
bankAccount	string	银行账号
errMsg	string	错误信息
res.type 的合法值

值	说明	最低版本
0	单位
1	个人
示例代码
在开发者工具中预览效果

wx.chooseInvoiceTitle({
  success(res) {}
})
