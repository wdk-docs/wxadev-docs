.. _subscribeMessage.getPubTemplateTitleList:

:wxapi:`subscribeMessage.getPubTemplateTitleList`
======================================================


服务器端调用
--------------

.. http:get:: wxaapi/newtmpl/getpubtemplatetitles?access_token=ACCESS_TOKEN

   :synopsis: 获取帐号所属类目下的公共模板标题
   :note: 本接口应在服务器端调用，详细说明参见服务端API。

   .. versionadded: 本接口支持云调用。需开发者工具版本 >= 1.02.1904090（最新稳定版下载），wx-server-sdk >= 0.4.0

   :query string access_token/cloudbase_access_token: *必选* 接口调用凭证
   :<json string ids: *必选* 类目 id，多个用逗号隔开
   :<json number start: *必选*	用于分页，表示从 start 开始。从 0 开始计数。
   :<json number limit: *必选*	用于分页，表示拉取 limit 条记录。最大为 30。
   :>json string errmsg: 错误信息
   :>json number errcode: 错误码

      - 200016	start 参数错误
      - 200017	limit 参数错误
      - 200018	类目 ids 缺失
      - 200019	类目 ids 不合法

   :>json number count: 模版标题列表总数
   :>json Array.<Object> data: 模板标题列表

      - tid	number 模版标题 id
      - title	string 模版标题
      - type	number 模版类型，2 为一次性订阅，3 为长期订阅
      - categoryId number	模版所属类目 id

   :请求示例: 参数在 URL 的 query 里面，如下： https://api.weixin.qq.com/wxaapi/newtmpl/getpubtemplatetitles?access_token=ACCESS_TOKEN&ids="2,616"&start=0&limit=1

     .. code:: JSON

       {
         "ids": "2,616",
         "start": 0,
         "limit": 1
       }

   :响应示例:

     .. code:: JSON

       {
         "errcode": 0,
         "errmsg": "ok",
         "count": 55,
         "data": [
             {
                 "tid": 99,
                 "title": "付款成功通知",
                 "type": 2,
                 "categoryId": "616"
             }
         ]
       }

云调用
----------

云调用是微信云开发提供的在云函数中调用微信开放接口的能力，需要在云函数中通过 wx-server-sdk 使用。

接口方法
openapi.subscribeMessage.getPubTemplateTitleList
需在 config.json 中配置 subscribeMessage.getPubTemplateTitleList API 的权限，详情

请求参数
属性	类型	默认值	必填	说明
ids	string		是	类目 id，多个用逗号隔开
start	number		是	用于分页，表示从 start 开始。从 0 开始计数。
limit	number		是	用于分页，表示拉取 limit 条记录。最大为 30。
返回值
Object
返回的 JSON 数据包

属性	类型	说明
errCode	number	错误码
errMsg	string	错误信息
count	number	模版标题列表总数
data	Array.<Object>	模板标题列表
errCode 的合法值

值	说明	最低版本
0	成功
data 的结构

属性	类型	说明
tid	number	模版标题 id
title	string	模版标题
type	number	模版类型，2 为一次性订阅，3 为长期订阅
categoryId	number	模版所属类目 id
异常
Object
抛出的异常

属性	类型	说明
errCode	number	错误码
errMsg	string	错误信息
errCode 的合法值

值	说明	最低版本
200016	start 参数错误
200017	limit 参数错误
200018	类目 ids 缺失
200019	类目 ids 不合法
请求示例

.. code:: js

    const cloud = require('wx-server-sdk')
    cloud.init({
      env: cloud.DYNAMIC_CURRENT_ENV,
    })
    exports.main = async (event, context) => {
      try {
        const result = await cloud.openapi.subscribeMessage.getPubTemplateTitleList({
            "ids": '',
            "start": '',
            "limit": ''
          })
        return result
      } catch (err) {
        return err
      }
    }

请求示例
参数在 URL 的 query 里面，如下： https://api.weixin.qq.com/wxaapi/newtmpl/getpubtemplatetitles?access_token=ACCESS_TOKEN&ids="2,616"&start=0&limit=1


.. code:: js

    const cloud = require('wx-server-sdk')
    cloud.init({
      env: cloud.DYNAMIC_CURRENT_ENV,
    })
    exports.main = async (event, context) => {
      try {
        const result = await cloud.openapi.subscribeMessage.getPubTemplateTitleList({
            "ids": '2,616',
            "start": 0,
            "limit": 1
          })
        return result
      } catch (err) {
        return err
      }
    }

响应示例


.. code:: json

    {
      "errCode": 0,
      "errMsg": "openapi.subscribeMessage.getPubTemplateTitleList:ok",
      "count": 55,
      "data": [
        {
          "tid": 99,
          "title": "付款成功通知",
          "type": 2,
          "categoryId": "616"
        }
      ]
    }
