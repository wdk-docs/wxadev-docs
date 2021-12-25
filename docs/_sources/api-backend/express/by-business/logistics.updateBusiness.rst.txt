.. _logistics.updateBusiness:

:wxbpi:`更新商户审核结果 <logistics.updateBusiness>`
============================================================

logistics.updateBusiness
本接口应在服务器端调用，详细说明参见服务端API。

本接口支持云调用。需开发者工具版本 >= 1.02.1904090（最新稳定版下载），wx-server-sdk >= 0.4.0


一、HTTPS 调用
-----------------------

接口地址请求地址 :term:`api`

.. http:post:: express/delivery/service/business/update?access_token=ACCESS_TOKEN

请求参数

属性	类型	默认值	必填	说明
access_token	string		是	接口调用凭证
shop_app_id	string		是	商户的小程序AppID，即审核商户事件中的 ShopAppID
biz_id	string		是	商户账户
result_code	number		是	审核结果，0 表示审核通过，其他表示审核失败
result_msg	string		否	审核错误原因，仅 result_code 不等于 0 时需要设置
返回值
Object
属性	类型	说明
errcode	number	错误码
errmsg	string	错误信息

errcode 的合法值

值	说明	最低版本
0	成功
-1	其他错误
40013	非法的商户小程序 AppID
9300525	商户未申请过审核

请求数据示例

.. code:: json

  {
    "shop_app_id": "wxABCD",
    "biz_id": "xyz",
    "result_code": 0,
    "result_msg": "审核通过"
  }

返回数据示例

.. code:: json

  {
    "errcode": 0,
    "errmsg": "ok"
  }

二、云调用
--------------

云调用是小程序·云开发提供的在云函数中调用微信开放接口的能力，需要在云函数中通过 wx-server-sdk 使用。

接口方法

.. function::  openapi.logistics.updateBusiness

需在 config.json 中配置 logistics.updateBusiness API 的权限，详情

请求参数

属性	类型	默认值	必填	说明
shopAppId	string		是	商户的小程序AppID，即审核商户事件中的 ShopAppID
bizId	string		是	商户账户
resultCode	number		是	审核结果，0 表示审核通过，其他表示审核失败
resultMsg	string		否	审核错误原因，仅 result_code 不等于 0 时需要设置

返回值 Object

属性	类型	说明
errCode	number	错误码
errMsg	string	错误信息
errCode 的合法值

值	说明	最低版本
0	成功

异常 Object 抛出的异常

属性	类型	说明
errCode	number	错误码
errMsg	string	错误信息

errCode 的合法值

值	说明	最低版本
-1	其他错误
40013	非法的商户小程序 AppID
9300525	商户未申请过审核

请求数据示例

.. code::

  const cloud = require('wx-server-sdk')
  cloud.init()
  exports.main = async (event, context) => {
    try {
      const result = await cloud.openapi.logistics.updateBusiness({
        shopAppId: 'wxABCD',
        bizId: 'xyz',
        resultCode: 0,
        resultMsg: '审核通过'
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
    "errCode": 0,
    "errMsg": "openapi.logistics.updateBusiness:ok"
  }
