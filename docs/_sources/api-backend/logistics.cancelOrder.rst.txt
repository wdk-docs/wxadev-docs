:wxbpi:`取消运单 <logistics.cancelOrder>`
============================================================

logistics.cancelOrder
本接口应在服务器端调用，详细说明参见服务端API。

本接口支持云调用。需开发者工具版本 >= 1.02.1904090（最新稳定版下载），wx-server-sdk >= 0.4.0



调用方式：

一、HTTPS 调用
二、云调用

一、HTTPS 调用
请求地址
POST https://api.weixin.qq.com/cgi-bin/express/business/order/cancel?access_token=ACCESS_TOKEN
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
errcode	number	错误码
errmsg	string	错误信息
errcode 的合法值

值	说明	最低版本
0	成功
-1	系统失败
40199	运单 ID 不存在
9300506	运单 ID 已经存在轨迹，不可取消
请求示例
{
  "order_id": "01234567890123456789",
  "openid": "oABC123456",
  "delivery_id": "SF",
  "waybill_id": "123456789"
}
返回示例
{
  "errcode": 0,
  "errmsg": "ok"
}

二、云调用
云调用是小程序·云开发提供的在云函数中调用微信开放接口的能力，需要在云函数中通过 wx-server-sdk 使用。

接口方法
openapi.logistics.cancelOrder
需在 config.json 中配置 logistics.cancelOrder API 的权限，详情

请求参数
属性	类型	默认值	必填	说明
orderId	string		是	订单 ID，需保证全局唯一
openid	string		是	用户 openid
deliveryId	string		是	快递公司ID，参见getAllDelivery
waybillId	string		是	运单ID
返回值
Object
属性	类型	说明
errCode	number	错误码
errMsg	string	错误信息
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
-1	系统失败
40199	运单 ID 不存在
9300506	运单 ID 已经存在轨迹，不可取消
请求示例

.. code::

  const cloud = require('wx-server-sdk')
  cloud.init()
  exports.main = async (event, context) => {
    try {
      const result = await cloud.openapi.logistics.cancelOrder({
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
返回示例

.. code:: json

  {
    "errCode": 0,
    "errMsg": "openapi.logistics.cancelOrder:ok"
  }