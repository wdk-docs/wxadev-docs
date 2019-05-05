:wxbpi:`查询商户余额事件 <logistics.onGetQuota>`
============================================================

logistics.onGetQuota
本文档描述服务器端接收的消息或事件，详细说明参见消息推送。




一、HTTPS 调用
消息参数
Object
属性	类型	说明
ToUserName	string	快递公司小程序 UserName
FromUserName	string	微信团队的 OpenID （固定值）
CreateTime	number	事件时间，Unix时间戳
MsgType	string	消息类型，固定为 event
Event	string	事件类型，固定为 get_quota，不区分大小写
BizID	string	商户ID，即商户在快递注册的客户编码或月结账户名
BizPwd	string	BizID 对应的密码
ShopAppID	string	商户小程序的 AppID
消息返回
属性	类型	默认值	必填	说明
ToUserName	string		是	原样返回请求中的 FromUserName
FromUserName	string		是	快递公司小程序 UserName
CreateTime	number		是	事件时间，Unix时间戳
MsgType	string		是	消息类型，固定为event
Event	string		是	事件类型，固定为get_quota，不区分大小写
BizID	string		是	商户ID
ResultCode	number		是	处理结果错误码
ResultMsg	string		是	处理结果详情
Quota	number		是	商户可用余额，0 表示无可用余额
ResultCode 的合法值

值	说明	最低版本
0	查询成功
-1	其他错误
10001	客户编码或者月结账户不存在
10002	客户密码不正确
消息数据包示例
XML 格式

<xml>
    <ToUserName><![CDATA[gh_abcdefg]]></ToUserName>
    <FromUserName><![CDATA[oABCD]]></FromUserName>
    <CreateTime>1533042556</CreateTime>
    <MsgType><![CDATA[event]]></MsgType>
    <Event><![CDATA[get_quota]]></Event>
    <BizID><![CDATA[xyz]]></BizID>
    <BizPwd><![CDATA[xyz123]]></BizPwd>
    <ShopAppID><![CDATA[wxABCD]]></ShopAppID>
</xml>
JSON 格式


.. code:: json

  {
    "ToUserName": "gh_abcdefg",
    "FromUserName": "oABCD",
    "CreateTime": 1533042556,
    "MsgType": "event",
    "Event": "get_quota",
    "BizID": "xyz",
    "BizPwd": "xyz123",
    "ShopAppID": "wxABCD"
  }

返回数据包示例
XML 格式

<xml>
    <ToUserName><![CDATA[oABCD]]></ToUserName>
    <FromUserName><![CDATA[gh_abcdefg]]></FromUserName>
    <CreateTime>1533042556</CreateTime>
    <MsgType><![CDATA[event]]></MsgType>
    <Event><![CDATA[get_quota]]></Event>
    <BizID><![CDATA[xyz]]></BizID>
    <ResultCode>0</ResultCode>
    <ResultMsg><![CDATA[success]]></ResultMsg>
    <Quota>0</Quota>
</xml>
JSON 格式

{
  "ToUserName": "oABCD",
  "FromUserName": "gh_abcdefg",
  "CreateTime": 1533042556,
  "MsgType": "event",
  "Event": "get_quota",
  "BizID": "xyz",
  "ResultCode": 0,
  "ResultMsg": "success",
  "Quota": 0
}