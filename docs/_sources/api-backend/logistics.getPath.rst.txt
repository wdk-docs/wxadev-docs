:wxbpi:`查询运单轨迹 <logistics.getPath>`
============================================================

logistics.getPath
本接口应在服务器端调用，详细说明参见服务端API。

本接口支持云调用。需开发者工具版本 >= 1.02.1904090（最新稳定版下载），wx-server-sdk >= 0.4.0


一、HTTPS 调用
------------------

请求地址
POST https://api.weixin.qq.com/cgi-bin/express/business/path/get?access_token=ACCESS_TOKEN

请求参数
属性	类型	默认值	必填	说明
access_token	string		是	接口调用凭证
order_id	string		是	订单 ID，需保证全局唯一
openid	string		是	用户 openid
delivery_id	string		是	快递公司ID，参见getAllDelivery
waybill_id	string		是	运单ID

返回值
Object
属性	类型	说明
openid	string	用户openid
delivery_id	string	快递公司 ID
waybill_id	string	运单 ID
path_item_num	number	轨迹节点数量
path_item_list	Array.<Object>	轨迹节点列表

path_item_list 的结构

属性	类型	说明
action_time	number	轨迹节点 Unix 时间戳
action_type	number	轨迹节点类型
action_msg	string	轨迹节点详情

action_type 的合法值

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

请求数据示例

.. code:: json

  {
    "order_id": "01234567890123456789",
    "openid": "oABC123456",
    "delivery_id": "SF",
    "waybill_id": "123456789"
  }

返回数据示例

.. code:: json

  {
    "openid": "OPENID",
    "delivery_id": "SF",
    "waybill_id": "12345678901234567890",
    "path_item_num": 3,
    "path_item_list": [
      {
        "action_time": 1533052800,
        "action_type": 100001,
        "action_msg": "快递员已成功取件"
      },
      {
        "action_time": 1533062800,
        "action_type": 200001,
        "action_msg": "快件已到达xxx集散中心，准备发往xxx"
      },
      {
        "action_time": 1533072800,
        "action_type": 300001,
        "action_msg": "快递员已出发，联系电话xxxxxx"
      }
    ]
  }

二、云调用
------------------

云调用是小程序·云开发提供的在云函数中调用微信开放接口的能力，需要在云函数中通过 wx-server-sdk 使用。

接口方法
openapi.logistics.getPath
需在 config.json 中配置 logistics.getPath API 的权限，详情

请求参数
属性	类型	默认值	必填	说明
orderId	string		是	订单 ID，需保证全局唯一
openid	string		是	用户 openid
deliveryId	string		是	快递公司ID，参见getAllDelivery
waybillId	string		是	运单ID
返回值
Object
属性	类型	说明
openid	string	用户openid
deliveryId	string	快递公司 ID
waybillId	string	运单 ID
pathItemNum	number	轨迹节点数量
pathItemList	Array.<Object>	轨迹节点列表
pathItemList 的结构

属性	类型	说明
actionTime	number	轨迹节点 Unix 时间戳
actionType	number	轨迹节点类型
actionMsg	string	轨迹节点详情
actionType 的合法值

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
请求数据示例

.. code::

  const cloud = require('wx-server-sdk')
  cloud.init()
  exports.main = async (event, context) => {
    try {
      const result = await cloud.openapi.logistics.getPath({
        openid: 'oABC123456',
        orderId: '01234567890123456789',
        deliveryId: 'SF',
        waybillId: '123456789'
      })
      console.log(result)
      return result
    } catch (err) {
      console.log(err)
      return err
    }
  }

返回数据示例

.. code:: json

  {
    "openid": "OPENID",
    "deliveryId": "SF",
    "waybillId": "12345678901234567890",
    "pathItemNum": 3,
    "pathItemList": [
      {
        "actionTime": 1533052800,
        "actionType": 100001,
        "actionMsg": "快递员已成功取件"
      },
      {
        "actionTime": 1533062800,
        "actionType": 200001,
        "actionMsg": "快件已到达xxx集散中心，准备发往xxx"
      },
      {
        "actionTime": 1533072800,
        "actionType": 300001,
        "actionMsg": "快递员已出发，联系电话xxxxxx"
      }
    ],
    "errMsg": "openapi.logistics.getPath:ok"
  }
