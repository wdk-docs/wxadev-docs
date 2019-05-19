.. _logistics.addOrder:

:wxbpi:`获取运单数据 <logistics.getOrder>`
===================================================

logistics.getOrder
本接口应在服务器端调用，详细说明参见服务端API。

本接口支持云调用。需开发者工具版本 >= 1.02.1904090（最新稳定版下载），wx-server-sdk >= 0.4.0


一、HTTPS 调用
-----------------

接口地址请求地址 :term:`api`

.. http:post:: express/business/order/get?access_token=ACCESS_TOKEN

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
print_html	string	运单 html 的 BASE64 结果
waybill_data	Array.<Object>	运单信息

waybill_data 的结构

属性	类型	说明
key	string	运单信息 key
value	string	运单信息 value

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
    "print_html": "jh7DjipP4ul4CQYUh69cniskrQZuOPwa1inAbXIqKbU0t71c0s65Au54cdWBZW0QJY4LYeofdM",
    "waybill_data": [
      {
        "key": "SF_bagAddr",
        "value": "广州"
      },
      {
        "key": "SF_mark",
        "value": "101- 07-03 509"
      }
    ]
  }

二、云调用
-----------------

云调用是小程序·云开发提供的在云函数中调用微信开放接口的能力，需要在云函数中通过 wx-server-sdk 使用。

接口方法

.. function:: openapi.logistics.getOrder

需在 config.json 中配置 logistics.getOrder API 的权限，详情

请求参数
属性	类型	默认值	必填	说明
orderId	string		是	订单 ID，需保证全局唯一
openid	string		是	用户 openid
deliveryId	string		是	快递公司ID，参见getAllDelivery
waybillId	string		是	运单ID
返回值
Object
属性	类型	说明
printHtml	string	运单 html 的 BASE64 结果
waybillData	Array.<Object>	运单信息
waybillData 的结构

属性	类型	说明
key	string	运单信息 key
value	string	运单信息 value
请求数据示例

.. code::

  const cloud = require('wx-server-sdk')
  cloud.init()
  exports.main = async (event, context) => {
    try {
      const result = await cloud.openapi.logistics.getOrder({
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
    "printHtml": "jh7DjipP4ul4CQYUh69cniskrQZuOPwa1inAbXIqKbU0t71c0s65Au54cdWBZW0QJY4LYeofdM",
    "waybillData": [
      {
        "key": "SF_bagAddr",
        "value": "广州"
      },
      {
        "key": "SF_mark",
        "value": "101- 07-03 509"
      }
    ],
    "errMsg": "openapi.logistics.getOrder:ok"
  }
