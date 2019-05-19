:wxapi:`wx.openCard`
===========================


.. function:: wx.openCard(Object object)


   .. versionadded:: 1.1.0 低版本需做 :ref:`compatibility` 。

查看微信卡包中的卡券。只有通过 认证 的小程序或文化互动类目的小游戏才能使用。更多文档请参考 微信卡券接口文档。

参数
Object object
属性	类型	默认值	必填	说明
cardList	Array.<Object>		是	需要打开的卡券列表
success	function		否	接口调用成功的回调函数
fail	function		否	接口调用失败的回调函数
complete	function		否	接口调用结束的回调函数（调用成功、失败都会执行）
object.cardList 的结构

属性	类型	默认值	必填	说明
cardId	string		是	卡券 ID
code	string		是	由 wx.addCard 的返回对象中的加密 code 通过解密后得到，解密请参照：code 解码接口
示例代码
wx.openCard({
  cardList: [{
    cardId: '',
    code: ''
  }, {
    cardId: '',
    code: ''
  }],
  success(res) { }
})
