:wxwork:`code2Session <dev-doc/qywx-api/login/code2session>`
====================================================================

::

  会话密钥 session_key 是对用户数据进行加密签名的密钥，为了应用自身的数据安全，
  开发者服务器不应该把会话密钥下发到小程序，也不应该对外提供这个密钥。

临时登录凭证校验接口是一个后台HTTPS 接口，
开发者服务器使用临时登录凭证code获取 session_key、用户userid以及用户所在企业的corpid等信息。

如果你是第三方服务商开发者，请参见第三方小程序，和此接口的主要区别在于请求地址不同。

**登录流程示意图**

.. image:: https://p.qpic.cn/pic_wework/2037829553/1d1bc71204c483503a4ca9747538a64e0ae8643e76a41d7e/0?t=19042217


.. index::
   single: miniprogram/jscode2session

接口地址请求地址 :term:`qyapi`

.. http:gett:: miniprogram/jscode2session

   :synopsis: 开发者服务器使用临时登录凭证code获取 session_key、用户userid以及用户所在企业的corpid等信息。
   :query access_token: 必选 调用接口凭证(注意，此处的access_token 是企业微信应用的access_token，获取方法参见“获取access_token”。要求必须由该小程序关联的应用的secret获取
   :query js_code: 必选 登录时获取的 code
   :query grant_type: 必选 此处固定为 ``authorization_code``
   :权限说明: access_token必须是与小程序关联的应用secret所获得。
   :>json string corpid: 用户所属企业的corpid
   :>json string userid: 用户在企业内的UserID，对应管理端的帐号，企业内唯一。注意：如果该企业没有关联该小程序，则此处返回加密的userid
   :>json string session_key: 会话密钥
   :>json number errcode: 错误码，真确时候返回 ``0``
   :>json number errmsg: 错误信息，正确时候返回 ``ok``。更多错误码的说明请查看 :wework:`企业微信全局错误码说明 <90139/90313>`。

.. attention::

   1. 企业微信的jscode2session请求url与微信的不同
   2. 企业微信的jscode2session返回的是userid，而微信返回的是openid
   3. 获取access_token时请使用企业的corpid参数，请勿使用小程序的appid
