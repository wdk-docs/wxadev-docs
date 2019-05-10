��          t               �   3   �        �       �  M   �  �     �     j             �  w  �  3        Q  �   ^      M    	  �   n	  �   m
  j   d     �     �   :wxfrwk:`服务端API <server-ability/backend-api>` access_token access_token 是小程序全局唯一后台接口调用凭据，调用绝大多数后台接口时都需使用。 开发者可以通过 getAccessToken 接口获取并进行妥善保存。 为了 access_token 的安全性，后端 API 不能直接在小程序内通过 :func:`wx.request` 调用， 即 api.weixin.qq.com 不能被配置为服务器域名。 开发者应在后端服务器使用getAccessToken获取 access_token，并调用相关 API； 对于 GET 请求，请求参数应以 QueryString 的形式写在 URL 中。 对于 POST 请求，部分参数需以 QueryString 的形式写在 URL 中 （一般只有 access_token，如有额外参数会在文档里的 URL 中体现）， 其他参数如无特殊说明均以 JSON 字符串格式写在 POST 请求的 body 中。 小程序还提供了一系列在后端服务器使用 HTTPS 请求调用的 API，帮助开发者在后台完成各类数据分析、管理和查询等操作。 如 getAccessToken，code2Session 等。详细介绍请参考 :ref:`api` 文档  。 当API调用成功时，部分接口不会返回 errcode 和 errmsg，只有调用失败时才会返回。 请求参数说明 返回参数说明 Project-Id-Version: wxadev 
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
 :wxfrwk:`服务端API <server-ability/backend-api>` access_token access_token 是小程序全局唯一后台接口调用凭据，调用绝大多数后台接口时都需使用。 开发者可以通过 getAccessToken 接口获取并进行妥善保存。 为了 access_token 的安全性，后端 API 不能直接在小程序内通过 :func:`wx.request` 调用， 即 api.weixin.qq.com 不能被配置为服务器域名。 开发者应在后端服务器使用getAccessToken获取 access_token，并调用相关 API； 对于 GET 请求，请求参数应以 QueryString 的形式写在 URL 中。 对于 POST 请求，部分参数需以 QueryString 的形式写在 URL 中 （一般只有 access_token，如有额外参数会在文档里的 URL 中体现）， 其他参数如无特殊说明均以 JSON 字符串格式写在 POST 请求的 body 中。 小程序还提供了一系列在后端服务器使用 HTTPS 请求调用的 API，帮助开发者在后台完成各类数据分析、管理和查询等操作。 如 getAccessToken，code2Session 等。详细介绍请参考 :ref:`api` 文档  。 当API调用成功时，部分接口不会返回 errcode 和 errmsg，只有调用失败时才会返回。 请求参数说明 返回参数说明 