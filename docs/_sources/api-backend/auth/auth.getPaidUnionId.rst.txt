.. _auth.getPaidUnionId:

:wxbpi:`auth.getPaidUnionId`
=====================================

本接口应在服务器端调用，详细说明参见 :ref:`ability_bpi` 。

本接口支持云调用。需开发者工具版本 ``>= 1.02.1904090`` （最新稳定版下载）， ``wx-server-sdk >= 0.4.0``

用户支付完成后，获取该用户的 UnionId，无需用户授权。本接口支持第三方平台代理查询。

.. attention:: 调用前需要用户完成支付，且在支付后的五分钟内有效。

调用方式::

  1. HTTPS 调用
  2. 云调用

HTTPS 调用
------------------

请求地址 :term:`api_wxa`

.. http:get:: getpaidunionid

   :synopsis: 用户支付完成后，获取该用户的 UnionId，无需用户授权。本接口支持第三方平台代理查询。
   :query string access_token: *必选* 接口调用凭证
   :query string openid: *必选* 支付用户唯一标识
   :query string transaction_id: *非比选* 微信支付订单号
   :query string mch_id: *非必选* 微信支付分配的商户号，和商户订单号配合使用
   :query string out_trade_no: *非必选* 微信支付商户订单号，和商户号配合使用
   :>json string unionid: 用户唯一标识，调用成功后返回
   :>json number serrcode: 错误码, 合法值如下

      - **-1** 系统繁忙，此时请开发者稍候再试
      - **0** 请求成功
      - **40003** openid 错误
      - **89002** 没有绑定开放平台帐号
      - **89300** 订单无效

   :>json string errmsg: 错误信息

使用说明

以下两种方式任选其一。

微信支付订单号（transaction_id）::

  https://api.weixin.qq.com/wxa/getpaidunionid?
  access_token=ACCESS_TOKEN&openid=OPENID&transaction_id=TRANSACTION_ID

微信支付商户订单号和微信支付商户号（out_trade_no 及 mch_id）::

  https://api.weixin.qq.com/wxa/getpaidunionid?
  access_token=ACCESS_TOKEN&openid=OPENID&mch_id=MCH_ID&out_trade_no=OUT_TRADE_NO

返回数据示例

.. code:: js

  {
    "unionid": "oTmHYjg-tElZ68xxxxxxxxhy1Rgk",
    "errcode": 0,
    "errmsg": "ok"
  }

云调用
-----------------

云调用是小程序·云开发提供的在云函数中调用微信开放接口的能力，需要在云函数中通过 wx-server-sdk 使用。

.. function:: openapi.auth.getPaidUnionId({openid[, transactionId][, mchId][, outTradeNo]})

   需在 `config.json` 中配置 `auth.getPaidUnionId` API 的权限，详情

   :param string openid: 是 支付用户唯一标识
   :param string transactionId: 否 微信支付订单号
   :param string mchId: 否 微信支付分配的商户号，和商户订单号配合使用
   :param string outTradeNo: 否 微信支付商户订单号，和商户号配合使用
   :rtype: Object
   :returns: 返回的 JSON 数据包

      - **unionid** *string* 用户唯一标识，调用成功后返回
      - **errCode** *number* 错误码

        - *0* 成功

      - **errMsg** *string* 错误信息

   :throws SomeError: 异常 Object 抛出的异常

      - **errCode** *number* 错误码

        - *-1* 系统繁忙，此时请开发者稍候再试
        - *40003* openid 错误
        - *89002* 没有绑定开放平台帐号
        - *89300* 订单无效

      - **errMsg** *string* 错误信息

   :请求示例:

     .. code:: js

       const cloud = require('wx-server-sdk')
       cloud.init()
       exports.main = async (event, context) => {
         try {
           const result = await cloud.openapi.auth.getPaidUnionId({
             openid: '',
             transactionId: '',
             mchId: '',
             outTradeNo: ''
           })
           console.log(result)
           return result
         } catch (err) {
           console.log(err)
           return err
         }
       }

   :返回示例:

     .. code:: json

       {
         "unionid": "oTmHYjg-tElZ68xxxxxxxxhy1Rgk",
         "errCode": 0,
         "errMsg": "openapi.auth.getPaidUnionId:ok"
       }





