:wxbpi:`获取支持的快递公司列表 <logistics.getAllDelivery>`
============================================================

logistics.getAllDelivery
本接口应在服务器端调用，详细说明参见服务端API。

本接口支持云调用。需开发者工具版本 >= 1.02.1904090（最新稳定版下载），wx-server-sdk >= 0.4.0



调用方式：

一、HTTPS 调用
二、云调用

一、HTTPS 调用

接口地址请求地址 :term:`api`

.. http:post:: express/business/delivery/getall?access_token=ACCESS_TOKEN

请求参数
属性	类型	默认值	必填	说明
access_token	string		是	接口调用凭证
返回值
Object
属性	类型	说明
count	number	快递公司数量
data	Array.<Object>	快递公司信息列表
data 的结构

属性	类型	说明
delivery_id	string	快递公司 ID
delivery_name	string	快递公司名称
返回数据示例

.. code:: json

  {
    "count": 8,
    "data": [
      {
        "delivery_id": "BEST",
        "delivery_name": "百世快递"
      },
      {
        "delivery_id": "EMS",
        "delivery_name": "中国邮政速递物流"
      },
      {
        "delivery_id": "OTP",
        "delivery_name": "承诺达特快"
      },
      {
        "delivery_id": "PJ",
        "delivery_name": "品骏物流"
      },
      {
        "delivery_id": "SF",
        "delivery_name": "顺丰速运"
      },
      {
        "delivery_id": "YTO",
        "delivery_name": "圆通速递"
      },
      {
        "delivery_id": "YUNDA",
        "delivery_name": "韵达快递"
      },
      {
        "delivery_id": "ZTO",
        "delivery_name": "中通快递"
      }
    ]
  }

二、云调用
云调用是小程序·云开发提供的在云函数中调用微信开放接口的能力，需要在云函数中通过 wx-server-sdk 使用。

接口方法
openapi.logistics.getAllDelivery
需在 config.json 中配置 logistics.getAllDelivery API 的权限，详情

返回值
Object
属性	类型	说明
count	number	快递公司数量
data	Array.<Object>	快递公司信息列表
data 的结构

属性	类型	说明
deliveryId	string	快递公司 ID
deliveryName	string	快递公司名称
请求示例
const cloud = require('wx-server-sdk')
cloud.init()
exports.main = async (event, context) => {
  try {
    const result = await cloud.openapi.logistics.getAllDelivery({})
    console.log(result)
    return result
  } catch (err) {
    console.log(err)
    return err
  }
}
返回数据示例
{
  "count": 8,
  "data": [
    {
      "deliveryId": "BEST",
      "deliveryName": "百世快递"
    },
    {
      "deliveryId": "EMS",
      "deliveryName": "中国邮政速递物流"
    },
    {
      "deliveryId": "OTP",
      "deliveryName": "承诺达特快"
    },
    {
      "deliveryId": "PJ",
      "deliveryName": "品骏物流"
    },
    {
      "deliveryId": "SF",
      "deliveryName": "顺丰速运"
    },
    {
      "deliveryId": "YTO",
      "deliveryName": "圆通速递"
    },
    {
      "deliveryId": "YUNDA",
      "deliveryName": "韵达快递"
    },
    {
      "deliveryId": "ZTO",
      "deliveryName": "中通快递"
    }
  ],
  "errMsg": "openapi.logistics.getAllDelivery:ok"
}
