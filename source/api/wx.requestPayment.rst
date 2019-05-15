:wxapi:`wx.requestPayment`
===============

.. function:: wx.requestPayment(Object object)

发起微信支付。了解更多信息，请查看微信支付接口文档

参数
Object object
属性	类型	默认值	必填	说明
timeStamp	string		是	时间戳，从 1970 年 1 月 1 日 00:00:00 至今的秒数，即当前的时间
nonceStr	string		是	随机字符串，长度为32个字符以下
package	string		是	统一下单接口返回的 prepay_id 参数值，提交格式如：prepay_id=***
signType	string	MD5	否	签名算法
paySign	string		是	签名，具体签名方案参见 小程序支付接口文档
success	function		否	接口调用成功的回调函数
fail	function		否	接口调用失败的回调函数
complete	function		否	接口调用结束的回调函数（调用成功、失败都会执行）
object.signType 的合法值

值	说明	最低版本
MD5	MD5
HMAC-SHA256	HMAC-SHA256
示例代码
wx.requestPayment({
  timeStamp: '',
  nonceStr: '',
  package: '',
  signType: 'MD5',
  paySign: '',
  success(res) { },
  fail(res) { }
})
