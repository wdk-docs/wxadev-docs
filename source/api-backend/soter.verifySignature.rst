.. _soter.verifySignature:

:wxbpi:`soter.verifySignature`
=====================================

.. _soter.verifySignature:

本接口应在服务器端调用，详细说明参见服务端API。

本接口支持云调用。需开发者工具版本 >= 1.02.1904090（最新稳定版下载），wx-server-sdk >= 0.4.0

SOTER 生物认证秘钥签名验证

调用方式：

HTTPS 调用
云调用

HTTPS 调用

接口地址请求地址 :term:`api`

.. http:post:: soter/verify_signature?access_token=ACCESS_TOKEN

请求参数
属性	类型	默认值	必填	说明
access_token	string		是	接口调用凭证
openid	string		是	用户 openid
json_string	string		是	通过 wx.startSoterAuthentication 成功回调获得的 resultJSON 字段
json_signature	string		是	通过 wx.startSoterAuthentication 成功回调获得的 resultJSONSignature 字段
返回值
Object
返回的 JSON 数据包

属性	类型	说明
errmsg	string	错误信息
errcode	number	错误码
is_ok	boolean	验证结果
请求示例
{
  "openid": "$openid",
  "json_string": "$resultJSON",
  "json_signature": "$resultJSONSignature"
}

云调用
云调用是小程序·云开发提供的在云函数中调用微信开放接口的能力，需要在云函数中通过 wx-server-sdk 使用。

接口方法

.. function:: openapi.soter.verifySignature

需在 config.json 中配置 soter.verifySignature API 的权限，详情

请求参数
属性	类型	默认值	必填	说明
openid	string		是	用户 openid
jsonString	string		是	通过 wx.startSoterAuthentication 成功回调获得的 resultJSON 字段
jsonSignature	string		是	通过 wx.startSoterAuthentication 成功回调获得的 resultJSONSignature 字段
返回值
Object
返回的 JSON 数据包

属性	类型	说明
errMsg	string	错误信息
errCode	number	错误码
isOk	boolean	验证结果
异常
Object
抛出的异常

属性	类型	说明
errMsg	string	错误信息
errCode	number	错误码
errCode 的合法值

值	说明	最低版本
请求示例
const cloud = require('wx-server-sdk')
cloud.init()
exports.main = async (event, context) => {
  try {
    const result = await cloud.openapi.soter.verifySignature({
      openid: '$openid',
      jsonString: '$resultJSON',
      jsonSignature: '$resultJSONSignature'
    })
    console.log(result)
    return result
  } catch (err) {
    console.log(err)
    return err
  }
}
