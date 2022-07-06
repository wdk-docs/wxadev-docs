.. _updatableMessage.setUpdatableMsg:

:wxbpi:`updatableMessage.setUpdatableMsg`
============================================================


本接口应在服务器端调用，详细说明参见服务端API :ref:`api-backend` 。

本接口支持 :ref:`wxcloud` 。需开发者工具版本 >= 1.02.1904090（最新稳定版下载），wx-server-sdk >= 0.4.0

服务器端调用
--------------

.. http:post:: message/wxopen/updatablemsg/send?access_token=(ACCESS_TOKEN)

   :synopsis: 修改被分享的动态消息。详见 :ref:`share_updatable-message` 。
   :mimetype: `application/json`
   :query string access_token/cloudbase_access_token: *必选* 接口调用凭证
   :<json string activity_id: *必选* 动态消息的 ID，通过 updatableMessage.createActivityId 接口获取
   :<json number target_state: *必选* 动态消息修改后的状态: 0 未开始 1 已开始
   :<json Object template_info: *必选* 动态消息对应的模板信息

     - **parameter_list** (*Array.<Object>*)  *必选* 模板中需要修改的参数

         - **name** (*string*)  *必选* 要修改的参数名

           - *member_count* target_state = 0 时必填，文字内容模板中 member_count 的值
           - *room_limit* target_state = 0 时必填，文字内容模板中 room_limit 的值
           - *path* target_state = 1 时必填，点击「进入」启动小程序时使用的路径。对于小游戏，没有页面的概念，可以用于传递查询字符串（query），如 "?foo=bar"
           - *version_type* target_state = 1 时必填，点击「进入」启动小程序时使用的版本。有效参数值为：develop（开发版），trial（体验版），release（正式版）

         - **value** (*string*)  是 修改后的参数值

   :>json number errcode: 错误码

     - *0* 请求成功
     - *-1* 系统繁忙。此时请开发者稍候再试
     - *42001* access_token 过期
     - *44002* post 数据为空
     - *47001* post 数据中参数缺失
     - *47501* 参数 activity_id 错误
     - *47502* 参数 target_state 错误
     - *47503* 参数 version_type 错误
     - *47504* activity_id 过期

   :>json string errmsg: 错误信息

   .. code-block:: http
      :caption: 请求示例
      :name: updatablemsg.send-example
      :linenos:
      :lineno-start: 1
      :emphasize-lines: 1,2

      POST message/wxopen/updatablemsg/send HTTP/1.1
      Host: https://api.weixin.qq.com/cgi-bin/
      Accept: application/json, text/javascript
      {
        "activity_id": "966_NGiqxxxxxxxxx...xxxxxxxxE33BlwX",
        "target_state": 0,
        "template_info": {
          "parameter_list": [
            {
              "name": "member_count",
              "value": "2"
            },
            {
              "name":"room_limit",
              "value": "5"
            }
          ]
        }
      }


消息状态
---------

消息有两个状态（target_state），分别有其对应的文字内容和颜色。文字内容模板和颜色不支持变更。

+------+-----------------------------------------------------+---------+--------------+
| 状态 |                      文字内容                       | 颜色 允 | 许转移的状态 |
+======+=====================================================+=========+==============+
| 0    | "成员正在加入，当前 {member_count}/{room_limit} 人" | #FA9D39 | 0, 1         |
+------+-----------------------------------------------------+---------+--------------+
| 1    | "已开始"                                            | #CCCCCC | 无           |
+------+-----------------------------------------------------+---------+--------------+

活动的默认有效期是 24 小时。活动结束后，消息内容会变成统一的样式：

- 文字内容：“已结束”
- 文字颜色：#00ff00

云调用
------------


.. function:: openapi.updatableMessage.setUpdatableMsg({activityId,targetState,templateInfo})

   云调用是微信云开发提供的在云函数中调用微信开放接口的能力，需要在云函数中通过 wx-server-sdk 使用。

   :: 需在 config.json 中配置 updatableMessage.setUpdatableMsg API 的权限，详情

   :param string activityId:  是 动态消息的 ID，通过 updatableMessage.createActivityId 接口获取
   :param number targetState:  是 动态消息修改后的状态（具体含义见后文）: 0 未开始 1 已开始
   :param Object templateInfo:  是 动态消息对应的模板信息

     - parameterList Array.<Object>  是 模板中需要修改的参数

       - name string  是 要修改的参数名

         - member_count target_state = 0 时必填，文字内容模板中 member_count 的值
         - room_limit target_state = 0 时必填，文字内容模板中 room_limit 的值
         - path target_state = 1 时必填，点击「进入」启动小程序时使用的路径。对于小游戏，没有页面的概念，可以用于传递查询字符串（query），如 "?foo=bar"
         - version_type target_state = 1 时必填，点击「进入」启动小程序时使用的版本。有效参数值为：develop（开发版），trial（体验版），release（正式版）

       - value string  是 修改后的参数值

   :returns:

      - **errCode**	(*number*):	错误码 0 成功
      - **errMsg**	(*string*):	错误信息

   :throws {errCode,errMsg}:

      - **errCode**	(*number*):	错误码
      - **errMsg**	(*string*):	错误信息

        - -1 系统繁忙。此时请开发者稍候再试
        - 42001 access_token 过期
        - 44002 post 数据为空
        - 47001 post 数据中参数缺失
        - 47501 参数 activity_id 错误
        - 47502 参数 target_state 错误
        - 47503 参数 version_type 错误
        - 47504 activity_id 过期


