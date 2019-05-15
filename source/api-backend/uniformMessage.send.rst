 wxbpi:`下发统一服务消息 <uniformMessage.send>`
=============================================

..:: 本接口应在服务器端调用，详细说明参见服务端API。

..:: 本接口支持云调用。

服务器端调用
--------------

.. api更目录 参看俗语

接口地址请求地址 :term:`api`

.. http:post:: message/wxopen/template/uniform_send?access_token=(ACCESS_TOKEN)

   :synopsis: 下发小程序和公众号统一的服务消息
   :mimetype: `application/json`
   :query string access_token: *必选*	接口调用凭证
   :<json string touser: *必选* 用户openid，可以是小程序的openid，也可以是mp_template_msg.appid对应的公众号的openid
   :<json object weapp_template_msg: 非必选	小程序模板消息相关的信息，可以参考小程序模板消息接口; 有此节点则优先发送小程序模板消息

      - **template_id** (*string*):  *必选*	小程序模板ID
      - **page** (*string*):  *必选*	小程序页面路径
      - **form_id** (*string*): *必选*	小程序模板消息formid
      - **data** (*string*):  *必选*	小程序模板数据
      - **emphasis_keyword** (*string*): 	*必选*	小程序模板放大关键词

   :<json object mp_template_msg: *必选*	公众号模板消息相关的信息，可以参考公众号模板消息接口；有此节点并且没有weapp_template_msg节点时，发送公众号模板消息

      - **appid** (*string*): *必选*	公众号appid，要求与小程序有绑定且同主体
      - **template_id** (*string*): *必选*	公众号模板id
      - **url** (*string*): *必选*	公众号模板消息所要跳转的url
      - **miniprogram** (*string*): *必选*	公众号模板消息所要跳转的小程序，小程序的必须与公众号具有绑定关系
      - **data** (*string*): *必选*	公众号模板消息的数据

   :>json string errmsg: 错误信息
   :>json number errcode: 错误码

   .. code-block:: http
       :caption: 请求示例
       :name: uniformMessage.send-request-example
       :linenos:
       :lineno-start: 1
       :emphasize-lines: 1,2

       POST message/wxopen/template/uniform_send HTTP/1.1
       Host: https://api.weixin.qq.com/cgi-bin/
       Accept: application/json, text/javascript
       {
         "touser": "OPENID",
         "weapp_template_msg": {
           "template_id": "TEMPLATE_ID",
           "page": "page/page/index",
           "form_id": "FORMID",
           "data": {
             "keyword1": {
               "value": "339208499"
             },
             "keyword2": {
               "value": "2015年01月05日 12:30"
             },
             "keyword3": {
               "value": "腾讯微信总部"
             },
             "keyword4": {
               "value": "广州市海珠区新港中路397号"
             }
           },
           "emphasis_keyword": "keyword1.DATA"
         },
         "mp_template_msg": {
           "appid": "APPID ",
           "template_id": "TEMPLATE_ID",
           "url": "http://weixin.qq.com/download",
           "miniprogram": {
             "appid": "xiaochengxuappid12345",
             "pagepath": "index?foo=bar"
           },
           "data": {
             "first": {
               "value": "恭喜你购买成功！",
               "color": "#173177"
             },
             "keyword1": {
               "value": "巧克力",
               "color": "#173177"
             },
             "keyword2": {
               "value": "39.8元",
               "color": "#173177"
             },
             "keyword3": {
               "value": "2014年9月22日",
               "color": "#173177"
             },
             "remark": {
               "value": "欢迎再次购买！",
               "color": "#173177"
             }
           }
         }
       }

   .. code-block:: http
    :caption: 响应示例
    :name: uniformMessage.send-response-example

    HTTP/1.1 200 OK
    Vary: Accept
    Content-Type: text/javascript
    {
      "errcode": 0,
      "errmsg": "ok"
    }


云调用
-----------

.. js:function:: openapi.uniformMessage.send({touser,weappTemplateMsg,mpTemplateMsg})

    云调用是小程序·云开发提供的在云函数中调用微信开放接口的能力，需要在云函数中通过 wx-server-sdk 使用。

    :param string touser:		是	用户openid，可以是小程序的openid，也可以是mp_template_msg.appid对应的公众号的openid
    :param object weappTemplateMsg:		否	小程序模板消息相关的信息，可以参考小程序模板消息接口; 有此节点则优先发送小程序模板消息

      - **templateId** (*string*):		是	小程序模板ID
      - **page** (*string*):		是	小程序页面路径
      - **formId** (*string*):		是	小程序模板消息formid
      - **data** (*string*):		是	小程序模板数据
      - **emphasisKeyword**	(*string*):		是	小程序模板放大关键词

    :param object mpTemplateMsg:		是	公众号模板消息相关的信息，可以参考公众号模板消息接口；有此节点并且没有weapp_template_msg节点时，发送公众号模板消息

      - **appid**	(*string*):		是	公众号appid，要求与小程序有绑定且同主体
      - **templateId**	(*string*):		是	公众号模板id
      - **url**	(*string*):		是	公众号模板消息所要跳转的url
      - **miniprogram**	(*string*):		是	公众号模板消息所要跳转的小程序，小程序的必须与公众号具有绑定关系
      - **data**	(*string*):	是	公众号模板消息的数据

    :returns:

      - **errCode**	(*number*):	错误码
      - **errMsg**	(*string*):	错误信息

    :throws SomeError:

      - **errCode**	(*number*):	错误码
      - **errMsg**	(*string*):	错误信息

    :请求示例:

      .. code:: js

       const cloud = require('wx-server-sdk')
       cloud.init()
       exports.main = async (event, context) => {
         try {
           const result = await cloud.openapi.uniformMessage.send({
             touser: 'OPENID',
             weappTemplateMsg: {
               page: 'page/page/index',
               data: {
                 keyword1: {
                   value: '339208499'
                 },
                 keyword2: {
                   value: '2015年01月05日 12:30'
                 },
                 keyword3: {
                   value: '腾讯微信总部'
                 },
                 keyword4: {
                   value: '广州市海珠区新港中路397号'
                 }
               },
               templateId: 'TEMPLATE_ID',
               formId: 'FORMID',
               emphasisKeyword: 'keyword1.DATA'
             },
             mpTemplateMsg: {
               appid: 'APPID ',
               url: 'http://weixin.qq.com/download',
               miniprogram: {
                 appid: 'xiaochengxuappid12345',
                 pagepath: 'index?foo=bar'
               },
               data: {
                 first: {
                   value: '恭喜你购买成功！',
                   color: '#173177'
                 },
                 keyword1: {
                   value: '巧克力',
                   color: '#173177'
                 },
                 keyword2: {
                   value: '39.8元',
                   color: '#173177'
                 },
                 keyword3: {
                   value: '2014年9月22日',
                   color: '#173177'
                 },
                 remark: {
                   value: '欢迎再次购买！',
                   color: '#173177'
                 }
               },
               templateId: 'TEMPLATE_ID'
             }
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
         "errCode": 0,
         "errMsg": "openapi.uniformMessage.send:ok"
       }


错误码
---------

+--------+-----------------------------------------------------------------------------+
| 错误码 |                                    说明                                     |
+========+=============================================================================+
| 40037  | 模板id不正确，weapp_template_msg.template_id或者mp_template_msg.template_id |
+--------+-----------------------------------------------------------------------------+
| 41028  | weapp_template_msg.form_id过期或者不正确                                    |
+--------+-----------------------------------------------------------------------------+
| 41029  | weapp_template_msg.form_id已被使用                                          |
+--------+-----------------------------------------------------------------------------+
| 41030  | weapp_template_msg.page不正确                                               |
+--------+-----------------------------------------------------------------------------+
| 45009  | 接口调用超过限额                                                            |
+--------+-----------------------------------------------------------------------------+
| 40003  | touser不是正确的openid                                                      |
+--------+-----------------------------------------------------------------------------+
| 40013  | appid不正确，或者不符合绑定关系要求                                         |
+--------+-----------------------------------------------------------------------------+
