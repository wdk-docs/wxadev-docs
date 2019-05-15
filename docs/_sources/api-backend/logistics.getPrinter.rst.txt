:wxbpi:`获取打印员 <logistics.getPrinter>`
============================================================

logistics.getPrinter
本接口应在服务器端调用，详细说明参见服务端API。

本接口支持云调用。需开发者工具版本 >= 1.02.1904090（最新稳定版下载），wx-server-sdk >= 0.4.0

若需要使用微信打单 PC 软件，才需要调用。


一、HTTPS 调用
-------------------

接口地址请求地址 :term:`api`

.. http:post:: express/business/printer/getall?access_token=ACCESS_TOKEN

请求参数
属性	类型	默认值	必填	说明
access_token	string		是	接口调用凭证

返回值
Object
属性	类型	说明
count	number	已经绑定的打印员数量
openid	Array.<string>	打印员 openid 列表

返回数据示例

.. code:: json

  {
    "count": 2,
    "openid": ["oABC", "oXYZ"]
  }

二、云调用
-------------------
云调用是小程序·云开发提供的在云函数中调用微信开放接口的能力，需要在云函数中通过 wx-server-sdk 使用。

接口方法
openapi.logistics.getPrinter
需在 config.json 中配置 logistics.getPrinter API 的权限，详情

返回值
Object
属性	类型	说明
count	number	已经绑定的打印员数量
openid	Array.<string>	打印员 openid 列表

请求示例

.. code::

  const cloud = require('wx-server-sdk')
  cloud.init()
  exports.main = async (event, context) => {
    try {
      const result = await cloud.openapi.logistics.getPrinter({})
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
    "count": 2,
    "openid": ["oABC", "oXYZ"],
    "errMsg": "openapi.logistics.getPrinter:ok"
  }
