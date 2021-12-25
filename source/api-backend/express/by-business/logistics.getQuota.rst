:wxbpi:`获取电子面单余额 <logistics.getQuota>`
============================================================

logistics.getQuota
本接口应在服务器端调用，详细说明参见服务端API。

本接口支持云调用。需开发者工具版本 >= 1.02.1904090（最新稳定版下载），wx-server-sdk >= 0.4.0

仅在使用加盟类快递公司时，才可以调用。

一、HTTPS 调用
--------------------

接口地址请求地址 :term:`api`

.. http:post:: express/business/quota/get?access_token=ACCESS_TOKEN

请求参数
属性	类型	默认值	必填	说明
access_token	string		是	接口调用凭证
delivery_id	string		是	快递公司ID，参见getAllDelivery
biz_id	string		是	快递公司客户编码
返回值
Object
属性	类型	说明
quota_num	number	电子面单余额
请求数据示例

.. code:: json

  {
    "delivery_id": "YTO",
    "biz_id": "xyz"
  }

返回数据示例

.. code:: json

  {
    "quota_num": 210
  }

二、云调用
--------------------

云调用是小程序·云开发提供的在云函数中调用微信开放接口的能力，需要在云函数中通过 wx-server-sdk 使用。

接口方法

.. function:: openapi.logistics.getQuota

需在 config.json 中配置 logistics.getQuota API 的权限，详情

请求参数
属性	类型	默认值	必填	说明
deliveryId	string		是	快递公司ID，参见getAllDelivery
bizId	string		是	快递公司客户编码
返回值
Object
属性	类型	说明
quotaNum	number	电子面单余额
请求数据示例
const cloud = require('wx-server-sdk')
cloud.init()
exports.main = async (event, context) => {
  try {
    const result = await cloud.openapi.logistics.getQuota({
      deliveryId: 'YTO',
      bizId: 'xyz'
    })
    console.log(result)
    return result
  } catch (err) {
    console.log(err)
    return err
  }
}
返回数据示例
{
  "quotaNum": 210,
  "errMsg": "openapi.logistics.getQuota:ok"
}
