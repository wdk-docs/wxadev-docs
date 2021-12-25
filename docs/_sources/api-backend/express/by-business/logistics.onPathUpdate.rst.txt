.. _logistics.onPathUpdate:

:wxbpi:`运单轨迹更新事件 <logistics.onPathUpdate>`
============================================================

logistics.onPathUpdate

本文档描述服务器端接收的消息或事件，详细说明参见消息推送。

当运单轨迹有更新时，会产生如下数据包。收到事件之后，回复success或者空串即可。


一、HTTPS 调用
消息参数
Object
属性	类型	说明
ToUserName	string	小程序的原始ID
FromUserName	string	发送者的openid
CreateTime	number	消息创建时间（整型）
MsgType	string	固定 event
Event	string	固定 add_express_path
DeliveryID	string	快递公司ID
WayBillId	string	运单ID
Version	number	轨迹版本号（整型）
Count	number	轨迹节点数（整型）
Actions	Array.<Object>	轨迹列表
Actions 的结构

属性	类型	说明
ActionTime	number	轨迹节点 Unix 时间戳
ActionType	number	轨迹节点类型
ActionMsg	string	轨迹节点详情
ActionType 的合法值

值	说明	最低版本
100001	揽件阶段-揽件成功
100002	揽件阶段-揽件失败
100003	揽件阶段-分配业务员
200001	运输阶段-更新运输轨迹
300002	派送阶段-开始派送
300003	派送阶段-签收成功
300004	派送阶段-签收失败
400001	异常阶段-订单取消
400002	异常阶段-订单滞留
消息数据包示例
XML 格式

<xml>
  <ToUserName><![CDATA[toUser]]></ToUserName>
  <FromUserName><![CDATA[fromUser]]></FromUserName>
  <CreateTime>1546924844</CreateTime>
  <MsgType><![CDATA[event]]></MsgType>
  <Event><![CDATA[add_express_path]]></Event>
  <DeliveryID><![CDATA[SF]]></DeliveryID>
  <WayBillId><![CDATA[123456789]]></WayBillId>
  <Version>3</Version>
  <Count>3</Count>
  <Actions>
    <ActionTime>1546924840</ActionTime>
    <ActionType>100001</ActionType>
    <ActionMsg><![CDATA[小哥A揽件成功]]></ActionMsg>
  </Actions>
  <Actions>
    <ActionTime>1546924841</ActionTime>
    <ActionType>200001</ActionType>
    <ActionMsg><![CDATA[到达广州集包地]]></ActionMsg>
  </Actions>
  <Actions>
    <ActionTime>1546924842</ActionTime>
    <ActionType>200001</ActionType>
    <ActionMsg><![CDATA[运往目的地]]></ActionMsg>
  </Actions>
</xml>
JSON 格式


.. code:: json

  {
    "ToUserName": "toUser",
    "FromUserName": "fromUser",
    "CreateTime": 1546924844,
    "MsgType": "event",
    "Event": "add_express_path",
    "DeliveryID": "SF",
    "WayBillId": "123456789",
    "Version": 2,
    "Count": 3,
    "Actions": [
      {
        "ActionTime": 1546924840,
        "ActionType": 100001,
        "ActionMsg": "小哥A揽件成功"
      },
      {
        "ActionTime": 1546924841,
        "ActionType": 200001,
        "ActionMsg": "到达广州集包地"
      },
      {
        "ActionTime": 1546924842,
        "ActionType": 200001,
        "ActionMsg": "运往目的地"
      }
    ]
  }
