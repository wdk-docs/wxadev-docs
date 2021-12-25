.. _auth.code2Session:

:wxbpi:`auth.code2Session`
===============================

本接口应在服务器端调用，详细说明参见服务端API。

请求地址 :term:`api_sns`

.. http:get:: jscode2session

   :synopsis: 登录凭证校验。通过 wx.login() 接口获得临时登录凭证 code 后传到开发者服务器调用此接口完成登录流程。更多使用方法详见 小程序登录。
   :param string appid: 是 小程序 appId
   :param string secret: 是 小程序 appSecret
   :param string js_code: 是 登录时获取的 code
   :param string grant_type: 是 授权类型，此处只需填写 authorization_code

   :>json string openid: 用户唯一标识
   :>json string session_key: 会话密钥
   :>json string unionid: 用户在开放平台的唯一标识符，在满足 UnionID 下发条件的情况下会返回，详见 UnionID 机制说明。
   :>json number errcode: 错误码

      - *-1* 系统繁忙，此时请开发者稍候再试
      - *0* 请求成功
      - *40029* code 无效
      - *45011* 频率限制，每个用户每分钟100次

   :>json string errmsg: 错误信息
