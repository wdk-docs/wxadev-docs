
第三方小程序（服务商）
=========================

企业微信的第三方服务商也可以开发小程序并关联到第三方应用，发布之后即可让企业授权安装并使用（参见第三方应用授权安装流程）

第三方小程序的登录流程与企业自建应用有些差异，主要差异是jscode2session接口调用方式有所区别，详见下文

第三方小程序登录流程示意图
------------------------------

.. image:: https://p.qpic.cn/pic_wework/3685288192/9f993793ca07f7b6a9f4359d7ba58998ced701fabcda2bdf/0?t=19042222

图片描述

流程说明：

小程序调用 wx.qy.login() 获取 临时登录凭证code ，并回传到服务商服务器。
服务商服务器以code换取 用户唯一标识 userid 、用户所在企业corpid 和 会话密钥 session_key。
此步骤以后服务商后台可以根据用户标识来生成自定义登录态，用于后续业务逻辑中前后端交互时识别用户身份。

第三方登录凭证校验
------------------------------

接口地址

.. http:get:: <qyapi>/service/miniprogram/jscode2session

    :query suite_access_token: **必选**	第三方应用凭证，获取方法见获取第三方应用凭证。要求必须由该小程序关联的第三方应用的secret获取
    :query js_code:	**必选**	登录时获取的 code
    :query grant_type: **必选**	此处固定为 ``authorization_code``

    :>json string corpid: 用户所属企业的corpid
    :>json string userid: 用户在企业内的UserID，对应管理端的帐号，企业内唯一。注意：如果该企业没有关联该小程序，则此处返回加密的userid
    :>json string session_key: 会话密钥
    :>json number errcode: 错误码，真确时候返回 ``0``。 更多错误码的说明请查看 :wework:`企业微信全局错误码说明 <90139/90313>`
    :>json number errmsg: 错误信息，正确时候返回 ``ok``。

.. attention::

    第三方请求jscode2session的url与企业自建应用不同，url中增加了/service/，参数为suite_access_token，而非access_token，请开发者注意区分。

