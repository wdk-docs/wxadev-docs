.. _subscribeMessage.getPubTemplateKeyWordsById:

:wxapi:`subscribeMessage.getPubTemplateKeyWordsById`
==========================================================


subscribeMessage.getPubTemplateKeyWordsById
本接口应在服务器端调用，详细说明参见服务端API。

本接口支持云调用。需开发者工具版本 >= 1.02.1904090（最新稳定版下载），wx-server-sdk >= 0.4.0

获取模板标题下的关键词列表

调用方式：

HTTPS 调用
云调用

HTTPS 调用
请求地址
GET https://api.weixin.qq.com/wxaapi/newtmpl/getpubtemplatekeywords?access_token=ACCESS_TOKEN
请求参数
属性	类型	默认值	必填	说明
access_token / cloudbase_access_token	string		是	接口调用凭证
tid	string		是	模板标题 id，可通过接口获取
返回值
Object
返回的 JSON 数据包

属性	类型	说明
errcode	number	错误码
errmsg	string	错误信息
count	number	模版标题列表总数
data	Array.<Object>	关键词列表
data 的结构

属性	类型	说明
kid	number	关键词 id，选用模板时需要
name	string	关键词内容
example	string	关键词内容对应的示例
rule	string	参数类型
请求示例
参数在 URL 的 query 里面，如下： https://api.weixin.qq.com/wxaapi/newtmpl/getpubtemplatekeywords?access_token=ACCESS_TOKEN&tid=99

{
  "tid": "99"
}
响应示例

{
   "errcode": 0,
   "errmsg": "ok",
   "data": [
       {
           "kid": 1,
           "name": "物品名称",
           "example": "名称",
           "rule": "thing"
       }
   ]
}

云调用
云调用是微信云开发提供的在云函数中调用微信开放接口的能力，需要在云函数中通过 wx-server-sdk 使用。

接口方法
openapi.subscribeMessage.getPubTemplateKeyWordsById
需在 config.json 中配置 subscribeMessage.getPubTemplateKeyWordsById API 的权限，详情

请求参数
属性	类型	默认值	必填	说明
tid	string		是	模板标题 id，可通过接口获取
返回值
Object
返回的 JSON 数据包

属性	类型	说明
errCode	number	错误码
errMsg	string	错误信息
count	number	模版标题列表总数
data	Array.<Object>	关键词列表
data 的结构

属性	类型	说明
kid	number	关键词 id，选用模板时需要
name	string	关键词内容
example	string	关键词内容对应的示例
rule	string	参数类型
异常
Object
抛出的异常

属性	类型	说明
errCode	number	错误码
errMsg	string	错误信息
errCode 的合法值

值	说明	最低版本
请求示例
const cloud = require('wx-server-sdk')
cloud.init({
  env: cloud.DYNAMIC_CURRENT_ENV,
})
exports.main = async (event, context) => {
  try {
    const result = await cloud.openapi.subscribeMessage.getPubTemplateKeyWordsById({
        "tid": ''
      })
    return result
  } catch (err) {
    return err
  }
}
请求示例
参数在 URL 的 query 里面，如下： https://api.weixin.qq.com/wxaapi/newtmpl/getpubtemplatekeywords?access_token=ACCESS_TOKEN&tid=99

const cloud = require('wx-server-sdk')
cloud.init({
  env: cloud.DYNAMIC_CURRENT_ENV,
})
exports.main = async (event, context) => {
  try {
    const result = await cloud.openapi.subscribeMessage.getPubTemplateKeyWordsById({
        "tid": '99'
      })
    return result
  } catch (err) {
    return err
  }
}
响应示例
{
  "errCode": 0,
  "errMsg": "openapi.subscribeMessage.getPubTemplateKeyWordsById:ok",
  "data": [
    {
      "kid": 1,
      "name": "物品名称",
      "example": "名称",
      "rule": "thing"
    }
  ]
}
