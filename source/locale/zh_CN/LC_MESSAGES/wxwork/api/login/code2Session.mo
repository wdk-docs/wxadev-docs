��          �               \     ]  <   w     �     �  B   �  �     8   �  M        ^  ~   k  -   �       �   7     �  �        �  S   �  �     $   �  w  �     ?  <   Y     �     �  B   �  �   �  8   �	  M   �	     @
  ~   M
  -   �
     �
  �        �  �   �     �  S   �  �   �  $   �   **登录流程示意图** :wxwork:`code2Session <dev-doc/qywx-api/login/code2session>` Query Parameters Response JSON Object access_token必须是与小程序关联的应用secret所获得。 临时登录凭证校验接口是一个后台HTTPS 接口， 开发者服务器使用临时登录凭证code获取 session_key、用户userid以及用户所在企业的corpid等信息。 企业微信的jscode2session请求url与微信的不同 企业微信的jscode2session返回的是userid，而微信返回的是openid 会话密钥 如果你是第三方服务商开发者，请参见第三方小程序，和此接口的主要区别在于请求地址不同。 必选 此处固定为 ``authorization_code`` 必选 登录时获取的 code 必选 调用接口凭证(注意，此处的access_token 是企业微信应用的access_token，获取方法参见“获取access_token”。要求必须由该小程序关联的应用的secret获取 权限说明 用户在企业内的UserID，对应管理端的帐号，企业内唯一。注意：如果该企业没有关联该小程序，则此处返回加密的userid 用户所属企业的corpid 获取access_token时请使用企业的corpid参数，请勿使用小程序的appid 错误信息，正确时候返回 ``ok``。更多错误码的说明请查看 :wework:`企业微信全局错误码说明 <90139/90313>`。 错误码，真确时候返回 ``0`` Project-Id-Version: wxadev 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-05-09 22:55+0800
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_CN
Language-Team: zh_CN <LL@li.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 **登录流程示意图** :wxwork:`code2Session <dev-doc/qywx-api/login/code2session>` Query Parameters Response JSON Object access_token必须是与小程序关联的应用secret所获得。 临时登录凭证校验接口是一个后台HTTPS 接口， 开发者服务器使用临时登录凭证code获取 session_key、用户userid以及用户所在企业的corpid等信息。 企业微信的jscode2session请求url与微信的不同 企业微信的jscode2session返回的是userid，而微信返回的是openid 会话密钥 如果你是第三方服务商开发者，请参见第三方小程序，和此接口的主要区别在于请求地址不同。 必选 此处固定为 ``authorization_code`` 必选 登录时获取的 code 必选 调用接口凭证(注意，此处的access_token 是企业微信应用的access_token，获取方法参见“获取access_token”。要求必须由该小程序关联的应用的secret获取 权限说明 用户在企业内的UserID，对应管理端的帐号，企业内唯一。注意：如果该企业没有关联该小程序，则此处返回加密的userid 用户所属企业的corpid 获取access_token时请使用企业的corpid参数，请勿使用小程序的appid 错误信息，正确时候返回 ``ok``。更多错误码的说明请查看 :wework:`企业微信全局错误码说明 <90139/90313>`。 错误码，真确时候返回 ``0`` 