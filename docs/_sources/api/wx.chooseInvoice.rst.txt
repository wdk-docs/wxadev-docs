:wxapi:`wx.chooseInvoice`
============================================

.. function:: wx.chooseInvoice(Object object)

基础库 2.3.0 开始支持，低版本需做兼容处理。

调用前需要 用户授权 scope.invoice

选择用户已有的发票。

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
invoiceInfo	Object	用户选中的发票列表
res.invoiceInfo 的结构

属性	类型	说明
cardId	string	所选发票卡券的 cardId
encryptCode	string	所选发票卡券的加密 code，报销方可以通过 cardId 和 encryptCode 获得报销发票的信息。
publisherAppId	string	发票方的 appId
通过 cardId 和 encryptCode 获得报销发票的信息
请参考微信电子发票文档中，「查询报销发票信息」部分。 其中 access_token 的获取请参考auth.getAccessToken文档
