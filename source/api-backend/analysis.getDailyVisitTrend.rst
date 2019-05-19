.. _analysis.getDailyVisitTrend:

:wxbpi:`analysis.getDailyVisitTrend`
===================================================

本接口应在服务器端调用，详细说明参见 :ref:`backend-api` 。

本接口支持 :wxcloud:`云调用 <guide/openapi/openapi>` 。
需开发者工具版本 >= 1.02.1904090（ :wxdt:`最新稳定版下载 <stable>` ），wx-server-sdk >= 0.4.0

获取用户访问小程序数据日趋势


HTTPS 调用
-----------------------

请求地址 :term:`api_datacube`

.. http:post:: getweanalysisappiddailyvisittrend

   :query string access_token: ***** :ref:`接口调用凭证 <auth.getAccessToken>`
   :<json string begin_date: 是	开始日期。格式为 yyyymmdd
   :<json string end_date: 是	结束日期，限定查询1天数据，允许设置的最大值为昨日。格式为 yyyymmdd
   :>jsonarr Array.<Object> list: 数据列表
   :>jsonarr string .ref_date: 日期，格式为 yyyymmdd
   :>jsonarr number .session_cnt: 打开次数
   :>jsonarr number .visit_pv: 访问次数
   :>jsonarr number .visit_uv: 访问人数
   :>jsonarr number .visit_uv_new: 新用户数
   :>jsonarr number .stay_time_uv: 人均停留时长 (浮点型，单位：秒)
   :>jsonarr number .stay_time_session: 次均停留时长 (浮点型，单位：秒)
   :>jsonarr number .visit_depth: 平均访问深度 (浮点型)

   .. code-block:: http
      :caption: 请求数据示例

      POST getweanalysisappiddailyvisittrend
      Host: https://api.weixin.qq.com/datacube/
      Accept: application/json, text/javascript
      {
        "begin_date": "20170313",
        "end_date": "20170313"
      }



   .. code-block:: http
      :caption: 返回数据示例

      HTTP/1.1 200 OK
      Vary: Accept
      Content-Type: text/javascript
      {
        "list": [
          {
            "ref_date": "20170313",
            "session_cnt": 142549,
            "visit_pv": 472351,
            "visit_uv": 55500,
            "visit_uv_new": 5464,
            "stay_time_session": 0,
            "visit_depth": 1.9838
          }
        ]
      }

云调用
-----------------------

云调用是小程序·云开发提供的在云函数中调用微信开放接口的能力，需要在云函数中通过 :ref:`wx-server-sdk` 使用。

.. function:: openapi.analysis.getDailyVisitTrend

   需在 :ref:`config.json` 中配置 :ref:`analysis.getDailyVisitTrend` API 的权限，详情

   :param date beginDate: 是	开始日期。格式为 yyyymmdd
   :param date endDate: 是	结束日期，限定查询1天数据，允许设置的最大值为昨日。格式为 yyyymmdd
   :rtype: Object
   :return:  返回的 JSON 数据包 list	Array.<Object>	数据列表 list 的结构

      - **refDate**	(*string*)	日期，格式为 yyyymmdd
      - **sessionCnt**: 打开次数
      - **visitPv**: 访问次数
      - **visitUv**: 访问人数
      - **visitUvNew**: 新用户数
      - **stayTimeUv**: 人均停留时长 (浮点型，单位：秒)
      - **stayTimeSession**: 次均停留时长 (浮点型，单位：秒)
      - **visitDepth**: 平均访问深度 (浮点型)

   :请求数据示例:

      .. code-block::

         const cloud = require('wx-server-sdk')
         cloud.init()
         exports.main = async (event, context) => {
           try {
             const result = await cloud.openapi.analysis.getDailyVisitTrend({
               beginDate: '20170313',
               endDate: '20170313'
             })
             console.log(result)
             return result
           } catch (err) {
             console.log(err)
             return err
           }
         }

   :返回数据示例:

      .. code-block:: json

         {
           "list": [
             {
               "refDate": "20170313",
               "sessionCnt": 142549,
               "visitPv": 472351,
               "visitUv": 55500,
               "visitUvNew": 5464,
               "stayTimeSession": 0,
               "visitDepth": 1.9838
             }
           ],
           "errMsg": "openapi.analysis.getDailyVisitTrend:ok"
         }
