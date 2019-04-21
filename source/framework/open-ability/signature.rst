:wxfrwk:`开放数据校验与解密 <open-ability/signature>`
=======================================================

小程序可以通过各种前端接口获取微信提供的开放数据。考虑到开发者服务器也需要获取这些开放数据，微信会对这些数据做签名和加密处理。开发者后台拿到开放数据后可以对数据进行校验签名和解密，来保证数据不被篡改。

.. image:: https://developers.weixin.qq.com/miniprogram/dev/framework/open-ability/image/signature.jpg?t=19041921

签名校验以及数据加解密涉及用户的会话密钥 session_key。
开发者应该事先通过 wx.login 登录流程获取会话密钥 session_key 并保存在服务器。为了数据不被篡改，
开发者不应该把 session_key 传到小程序客户端等服务器外的环境。

数据签名校验
---------------

为了确保开放接口返回用户数据的安全性，微信会对明文数据进行签名。
开发者可以根据业务需要对数据包进行签名校验，确保数据的完整性。

通过调用接口（如 wx.getUserInfo）获取数据时，接口会同时返回 rawData、signature，
其中 signature = sha1( rawData + session_key )
开发者将 signature、rawData 发送到开发者服务器进行校验。
服务器利用用户对应的 session_key 使用相同的算法计算出签名 signature2 ，
比对 signature 与 signature2 即可校验数据的完整性。
如 wx.getUserInfo的数据校验：

接口返回的rawData：

.. code:: json

  {
    "nickName": "Band",
    "gender": 1,
    "language": "zh_CN",
    "city": "Guangzhou",
    "province": "Guangdong",
    "country": "CN",
    "avatarUrl": "http://wx.qlogo.cn/mmopen/vi_32/1vZvI39NWFQ9XM4LtQpFrQJ1xlgZxx3w7bQxKARol6503Iuswjjn6nIGBiaycAjAtpujxyzYsrztuuICqIM5ibXQ/0"
  }

用户的 session-key::

  HyVFkGl5F5OQWJZZaNzBBg==

用于签名的字符串为::

  {"nickName":"Band","gender":1,"language":"zh_CN","city":"Guangzhou","province":"Guangdong","country":"CN","avatarUrl":"http://wx.qlogo.cn/mmopen/vi_32/1vZvI39NWFQ9XM4LtQpFrQJ1xlgZxx3w7bQxKARol6503Iuswjjn6nIGBiaycAjAtpujxyzYsrztuuICqIM5ibXQ/0"}HyVFkGl5F5OQWJZZaNzBBg==

使用sha1得到的结果为::

  75e81ceda165f4ffa64f4068af58c64b8f54b88c

加密数据解密算法
------------------

接口如果涉及敏感数据（如wx.getUserInfo当中的 openId 和 unionId），
接口的明文内容将不包含这些敏感数据。开发者如需要获取敏感数据，
需要对接口返回的加密数据(encryptedData) 进行对称解密。 解密算法如下：

#. 对称解密使用的算法为 AES-128-CBC，数据采用PKCS#7填充。
#. 对称解密的目标密文为 Base64_Decode(encryptedData)。
#. 对称解密秘钥 aeskey = Base64_Decode(session_key), aeskey 是16字节。
#. 对称解密算法初始向量 为Base64_Decode(iv)，其中iv由数据接口返回。

微信官方提供了多种编程语言的示例代码（点击下载）。每种语言类型的接口名字均一致。调用方式可以参照示例。

另外，为了应用能校验数据的有效性，会在敏感数据加上数据水印( watermark )

watermark参数说明：

+-----------+--------+-------------------------------------------------------------+
|   参数    |  类型  |                            说明                             |
+===========+========+=============================================================+
| appid     | String | 敏感数据归属 appId，开发者可校验此参数与自身 appId 是否一致 |
+-----------+--------+-------------------------------------------------------------+
| timestamp | Int    | 敏感数据获取的时间戳, 开发者可以用于数据时效性校验          |
+-----------+--------+-------------------------------------------------------------+

如接口 wx.getUserInfo 敏感数据当中的 watermark：

.. code:: json

  {
    "openId": "OPENID",
    "nickName": "NICKNAME",
    "gender": GENDER,
    "city": "CITY",
    "province": "PROVINCE",
    "country": "COUNTRY",
    "avatarUrl": "AVATARURL",
    "unionId": "UNIONID",
    "watermark": {
      "appid": "APPID",
      "timestamp": TIMESTAMP
    }
  }

.. tip:: 解密后得到的json数据根据需求可能会增加新的字段，旧字段不会改变和删减，开发者需要预留足够的空间

会话密钥 session_key 有效性
-----------------------------

开发者如果遇到因为 session_key 不正确而校验签名失败或解密失败，请关注下面几个与 session_key 有关的注意事项。

1. wx.login 调用时，用户的 session_key 可能会被更新而致使旧 session_key 失效
   （刷新机制存在最短周期，如果同一个用户短时间内多次调用 wx.login，并非每次调用都导致 session_key 刷新）。
   开发者应该在明确需要重新登录时才调用 wx.login，及时通过 auth.code2Session 接口更新服务器存储的 session_key。
2. 微信不会把 session_key 的有效期告知开发者。
   我们会根据用户使用小程序的行为对 session_key 进行续期。用户越频繁使用小程序，session_key 有效期越长。
3. 开发者在 session_key 失效时，可以通过重新执行登录流程获取有效的 session_key。
   使用接口 wx.checkSession可以校验 session_key 是否有效，从而避免小程序反复执行登录流程。
4. 当开发者在实现自定义登录态时，可以考虑以 session_key 有效期作为自身登录态有效期，也可以实现自定义的时效性策略。
