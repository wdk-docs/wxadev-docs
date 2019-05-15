:wxapi:`wx.addCard`
============================================

.. function:: wx.addCard(Object object)

基础库 1.1.0 开始支持，低版本需做兼容处理。

批量添加卡券。只有通过 认证 的小程序或文化互动类目的小游戏才能使用。更多文档请参考 微信卡券接口文档。

参数
Object object
属性	类型	默认值	必填	说明
cardList	Array.<Object>		是	需要添加的卡券列表
success	function		否	接口调用成功的回调函数
fail	function		否	接口调用失败的回调函数
complete	function		否	接口调用结束的回调函数（调用成功、失败都会执行）
object.cardList 的结构

属性	类型	默认值	必填	说明
cardId	string		是	卡券 ID
cardExt	Object		是	卡券的扩展参数。需进行 JSON 序列化为字符串传入
cardExt 的结构

属性	类型	默认值	必填	说明
code	string		否	用户领取的 code，仅自定义 code 模式的卡券须填写，非自定义 code 模式卡券不可填写，详情
openid	string		否	指定领取者的 openid，只有该用户能领取。 bind_openid 字段为 true 的卡券必须填写，bind_openid 字段为 false 不可填写。
timestamp	number		是	时间戳，东八区时间,UTC+8，单位为秒
nonce_str	string		否	随机字符串，由开发者设置传入，加强安全性（若不填写可能被重放请求）。随机字符串，不长于 32 位。推荐使用大小写字母和数字，不同添加请求的 nonce_str 须动态生成，若重复将会导致领取失败。
fixed_begintimestamp	number		否	卡券在第三方系统的实际领取时间，为东八区时间戳（UTC+8,精确到秒）。当卡券的有效期类为 DATE_TYPE_FIX_TERM 时专用，标识卡券的实际生效时间，用于解决商户系统内起始时间和领取微信卡券时间不同步的问题。
outer_str	string		否	领取渠道参数，用于标识本次领取的渠道值。
signature	string		是	签名，商户将接口列表中的参数按照指定方式进行签名,签名方式使用 SHA1，具体签名方案参见：卡券签名
object.success 回调函数
参数
Object res
属性	类型	说明
cardList	Array.<Object>	卡券添加结果列表
res.cardList 的结构

属性	类型	说明
code	string	加密 code，为用户领取到卡券的code加密后的字符串，解密请参照：code 解码接口
cardId	string	用户领取到卡券的 ID
cardExt	string	卡券的扩展参数，结构请参考前文
isSuccess	boolean	是否成功
cardExt 说明
cardExt 是卡券的扩展参数，其值是一个 JSON 字符串。

示例代码
wx.addCard({
  cardList: [
    {
      cardId: '',
      cardExt: '{"code": "", "openid": "", "timestamp": "", "signature":""}'
    }, {
      cardId: '',
      cardExt: '{"code": "", "openid": "", "timestamp": "", "signature":""}'
    }
  ],
  success(res) {
    console.log(res.cardList) // 卡券添加结果
  }
})
