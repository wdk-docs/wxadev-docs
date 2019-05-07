:wxbpi:`更新打印员 <logistics.updatePrinter>`
============================================================

.. seealso::

  本接口应在服务器端调用，详细说明参见 :ref:`api-backend` 。

  本接口支持 :ref:`云调用 <https:://wdk-docs.github.io/wxcloud-docs>` 。需开发者工具版本 ``>= 1.02.1904090`` (最新 ::download:`稳定版下载 <https://developers.weixin.qq.com/miniprogram/dev/devtools/stable.html?t=19043020>`)，``wx-server-sdk >= 0.4.0``

若需要使用 :doc:`微信打单 PC 软件 <express-download>` ，才需要调用。

一、HTTPS 调用
----------------

.. http:get:: <api>/express/business/printer/update

  :term:`api`

  :query string access_token: *必选*	接口调用凭证
  :<json string openid: *必选*	打印员 openid
  :<json string update_type: *必选*	更新类型 合法值:

    - *bind*	绑定
    - *unbind*	解除绑定

  :>json number errcode: 错误码

    - *0*	成功
    - *-1*	系统失败
    - *9300517*	update_type 不正确

  :>json string errmsg: 错误信息

  :请求示例:

    .. code::

      {
        "openid": "oJ4v0wRAfiXcnIbM3SgGEUkTw3Qw",
        "update_type": "bind"
      }

  :返回示例:

    .. code::

      {
        "errcode": 0,
        "errmsg": "ok"
      }

二、云调用
-------------

云调用是小程序·云开发提供的在云函数中调用微信开放接口的能力，需要在云函数中通过 wx-server-sdk 使用。

接口方法

.. function:: openapi.logistics.updatePrinter

  需在 config.json 中配置 logistics.updatePrinter API 的权限，详情

请求参数
属性	类型	默认值	必填	说明
openid	string		是	打印员 openid
updateType	string		是	更新类型
updateType 的合法值

值	说明	最低版本
bind	绑定
unbind	解除绑定
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
9300517	update_type 不正确
请求数据示例

.. code::

  const cloud = require('wx-server-sdk')
  cloud.init()
  exports.main = async (event, context) => {
    try {
      const result = await cloud.openapi.logistics.updatePrinter({
        openid: 'oJ4v0wRAfiXcnIbM3SgGEUkTw3Qw',
        updateType: 'bind'
      })
      console.log(result)
      return result
    } catch (err) {
      console.log(err)
      return err
    }
  }

返回数据示例

.. code::

  {
    "errCode": 0,
    "errMsg": "openapi.logistics.updatePrinter:ok"
  }
