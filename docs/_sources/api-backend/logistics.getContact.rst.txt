.. _logistics.addOrder:

:wxbpi:`获取面单联系人信息 <logistics.getContact>`
============================================================

logistics.getContact
本接口应在服务器端调用，详细说明参见服务端API。

本接口支持云调用。需开发者工具版本 >= 1.02.1904090（最新稳定版下载），wx-server-sdk >= 0.4.0



调用方式：

一、HTTPS 调用
二、云调用

一、HTTPS 调用

接口地址请求地址 :term:`api`

.. http:post:: express/delivery/contact/get?access_token=ACCESS_TOKEN

请求参数
属性	类型	默认值	必填	说明
access_token	string		是	接口调用凭证
token	string		是	商户侧下单事件中推送的 Token 字段
waybill_id	string		是	运单 ID
返回值
Object
属性	类型	说明
waybill_id	string	运单 ID
sender	Array.<Object>	发件人信息
receiver	Array.<Object>	收件人信息
errcode	number	错误码
errmsg	string	错误信息
sender 的结构

属性	类型	说明
address	string	地址，已经将省市区信息合并
name	string	用户姓名
tel	string	座机号码
mobile	string	手机号码
receiver 的结构

属性	类型	说明
address	string	地址，已经将省市区信息合并
name	string	用户姓名
tel	string	座机号码
mobile	string	手机号码
errcode 的合法值

值	说明	最低版本
0	成功
-1	其他错误
40199	运单 ID 错误，未查到运单
9300507	Token 不正确
请求数据示例

.. code:: json

  {
    "token": "TOKEN",
    "waybill_id": "12345678901234567890"
  }
返回数据示例

.. code:: json

  {
    "waybill_id": "12345678901234567890",
    "sender": {
      "address": "广东省广州市海珠区XX路XX号XX大厦XX栋XX",
      "name": "张三",
      "tel": "020-88888888",
      "mobile": "18666666666"
    },
    "receiver": {
      "address": "广东省广州市天河区XX路XX号XX大厦XX栋XX",
      "name": "王小蒙",
      "tel": "029-77777777",
      "mobile": "18610000000"
    }
  }

二、云调用
云调用是小程序·云开发提供的在云函数中调用微信开放接口的能力，需要在云函数中通过 wx-server-sdk 使用。

接口方法

.. function:: openapi.logistics.getContact

需在 config.json 中配置 logistics.getContact API 的权限，详情

请求参数
属性	类型	默认值	必填	说明
token	string		是	商户侧下单事件中推送的 Token 字段
waybillId	string		是	运单 ID
返回值
Object
属性	类型	说明
waybillId	string	运单 ID
sender	Array.<Object>	发件人信息
receiver	Array.<Object>	收件人信息
errCode	number	错误码
errMsg	string	错误信息
sender 的结构

属性	类型	说明
address	string	地址，已经将省市区信息合并
name	string	用户姓名
tel	string	座机号码
mobile	string	手机号码
receiver 的结构

属性	类型	说明
address	string	地址，已经将省市区信息合并
name	string	用户姓名
tel	string	座机号码
mobile	string	手机号码
errCode 的合法值

值	说明	最低版本
0	成功
异常
Object
抛出的异常

属性	类型	说明
errCode	number	错误码
errMsg	string	错误信息
errCode 的合法值

值	说明	最低版本
-1	其他错误
40199	运单 ID 错误，未查到运单
9300507	Token 不正确
请求数据示例

.. code::

  const cloud = require('wx-server-sdk')
  cloud.init()
  exports.main = async (event, context) => {
    try {
      const result = await cloud.openapi.logistics.getContact({
        token: 'TOKEN',
        waybillId: '12345678901234567890'
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
    "waybillId": "12345678901234567890",
    "sender": {
      "address": "广东省广州市海珠区XX路XX号XX大厦XX栋XX",
      "name": "张三",
      "tel": "020-88888888",
      "mobile": "18666666666"
    },
    "receiver": {
      "address": "广东省广州市天河区XX路XX号XX大厦XX栋XX",
      "name": "王小蒙",
      "tel": "029-77777777",
      "mobile": "18610000000"
    },
    "errMsg": "openapi.logistics.getContact:ok"
  }
