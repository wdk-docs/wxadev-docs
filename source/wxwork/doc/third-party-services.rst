
第三方小程序（服务商）
=========================

企业微信的第三方服务商也可以开发小程序并关联到第三方应用，发布之后即可让企业授权安装并使用（参见第三方应用授权安装流程）

第三方小程序的登录流程与企业自建应用有些差异，主要差异是jscode2session接口调用方式有所区别，详见下文

第三方小程序登录流程示意图
图片描述

流程说明：

小程序调用 wx.qy.login() 获取 临时登录凭证code ，并回传到服务商服务器。
服务商服务器以code换取 用户唯一标识 userid 、用户所在企业corpid 和 会话密钥 session_key。
此步骤以后服务商后台可以根据用户标识来生成自定义登录态，用于后续业务逻辑中前后端交互时识别用户身份。

第三方登录凭证校验
接口地址

https://qyapi.weixin.qq.com/cgi-bin/service/miniprogram/jscode2session?suite_access_token=SUITE_ACCESS_TOKEN&js_code=CODE&grant_type=authorization_code

注意：
第三方请求jscode2session的url与企业自建应用不同，url中增加了/service/，参数为suite_access_token，而非access_token，请开发者注意区分。

请求参数

参数	是否必须	说明
suite_access_token	是	第三方应用凭证，获取方法见获取第三方应用凭证。要求必须由该小程序关联的第三方应用的secret获取
js_code	是	登录时获取的 code
grant_type	是	此处固定为authorization_code

返回说明

.. code::

    //正常返回的JSON数据包
    {
        "corpid": "CORPID",
        "userid": "USERID",
        "session_key": "kJtdi6RF+Dv67QkbLlPGjw==",
        "errcode": 0,
        "errmsg": "ok"
    }

    //错误时返回JSON数据包(示例为Code无效)
    {
        "errcode": 40029,
        "errmsg": "invalid code"
    }

参数说明

参数	说明
corpid	用户所属企业的corpid
userid	用户在企业内的UserID，对应管理端的帐号，企业内唯一。注意：如果用户所在企业并没有安装此小程序应用，则返回加密的userid
session_key	会话密钥
errcode	返回码
errmsg	对返回码的文本描述内容
errcode错误码

更多错误码的说明请查看企业微信全局错误码说明