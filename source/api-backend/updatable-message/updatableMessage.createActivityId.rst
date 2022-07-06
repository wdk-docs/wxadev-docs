.. _updatableMessage.createActivityId:

:wxbpi:`updatableMessage.createActivityId`
============================================================


本接口应在服务器端调用，详细说明参见 :ref:`api-backend`。

本接口支持云调用。需开发者工具版本 >= 1.02.1904090（最新稳定版下载），wx-server-sdk >= 0.4.0




服务器端调用
--------------

.. http:get:: message/wxopen/activityid/create?access_token=(ACCESS_TOKEN)&unionid=(UNIONID)

   :synopsis: 创建被分享动态消息或私密消息的 activity_id。详见 :ref:`share_updatable-message`。
   :param string access_token / cloudbase_access_token:		是	接口调用凭证
   :param string unionid:		否	为私密消息创建activity_id时，指定分享者为unionid用户。其余用户不能用此activity_id分享私密消息。openid与unionid填一个即可。私密消息暂不支持云函数生成activity id。
   :param string openid:		否	为私密消息创建activity_id时，指定分享者为openid用户。其余用户不能用此activity_id分享私密消息。openid与unionid填一个即可。私密消息暂不支持云函数生成activity id。
   :<json string activity_id:	动态消息的 ID
   :<json number expiration_time:	activity_id 的过期时间戳。默认24小时后过期。
   :<json number errcode:	错误码 0	请求成功 -1	系统繁忙。此时请开发者稍候再试 42001	access_token 过期


云调用
------------

云调用是微信云开发提供的在云函数中调用微信开放接口的能力，需要在云函数中通过 wx-server-sdk 使用。

接口方法
openapi.updatableMessage.createActivityId
需在 config.json 中配置 updatableMessage.createActivityId API 的权限，详情

请求参数
属性	类型	默认值	必填	说明
unionid	string		否	为私密消息创建activity_id时，指定分享者为unionid用户。其余用户不能用此activity_id分享私密消息。openid与unionid填一个即可。私密消息暂不支持云函数生成activity id。
openid	string		否	为私密消息创建activity_id时，指定分享者为openid用户。其余用户不能用此activity_id分享私密消息。openid与unionid填一个即可。私密消息暂不支持云函数生成activity id。
返回值
Object
返回的 JSON 数据包

属性	类型	说明
activityId	string	动态消息的 ID
expirationTime	number	activity_id 的过期时间戳。默认24小时后过期。
errCode	number	错误码
errCode 的合法值

值	说明	最低版本
0	成功
异常
Object
抛出的异常

属性	类型	说明
errCode	number	错误码
errCode 的合法值

值	说明	最低版本
-1	系统繁忙。此时请开发者稍候再试
42001	access_token 过期
