��          �               �   0   �        �   2  �   .  �    �   �  �   �  '   E    m  m   s  P   �  �   2  w  �  0   I
     z
  �   �
  �   �  �  ^  �   �  �   �  '   �    �  m   �  P   =  �   �   :wxfrwk:`UnionID 机制 <open-ability/union-id>` UnionID获取途径 如果开发者帐号下存在同主体的公众号或移动应用，并且该用户已经授权登录过该公众号或移动应用。 开发者也可以直接通过 wx.login + code2Session 获取#. 到该用户 UnionID ，无须用户再次授权。 如果开发者帐号下存在同主体的公众号，并且该用户已经关注了该公众号。 开发者可以直接通过 wx.login + code2Session 获取到该用户 UnionID，无须用#. 户再次授权。 如果开发者拥有多个移动应用、网站应用、和公众帐号（包括小程序），可通过 UnionID 来区分用户的唯一性， 因为只要是同一个微信开放平台帐号下的移动应用、网站应用和公众帐号（包括小程序），用户的 UnionID 是唯一的。 换句话说，同一用户，对同一个微信开放平台下的不同应用，unionid是相同的。 小程序端调用云函数时，如果开发者帐号下存在同主体的公众号或移动应用， 并且该用户已经授权登录过该公众号或移动应用，也可在云函数中通过 #. cloud.getWXContext 获取 UnionID。 小程序端调用云函数时，如果开发者帐号下存在同主体的公众号，并且该用户已经关注了该公众号， 可在云函数中通过 cloud.getWXContext 获取 UnionID。 微信开放平台绑定小程序流程 用户在小程序（暂不支持小游戏）中支付完成后，开发者可以直接通过getPaidUnionId接口获取该用户的 UnionID， 无需用户授权。注意：本接口仅在用户支付#. 完成后的5分钟内有效，请开发者妥善处理。 登录 `微信开放平台 <https://open.weixin.qq.com/>`_ — 管理中心 — 小程序 — 绑定小程序 绑定了开发者帐号的小程序，可以通过以下途径获取 UnionID。 调用接口 wx.getUserInfo，从解密数据中获取 UnionID。注意本接口需要用户授权，请开发者妥善处理用户拒绝授权后的情况。 Project-Id-Version: wxadev 
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
 :wxfrwk:`UnionID 机制 <open-ability/union-id>` UnionID获取途径 如果开发者帐号下存在同主体的公众号或移动应用，并且该用户已经授权登录过该公众号或移动应用。 开发者也可以直接通过 wx.login + code2Session 获取#. 到该用户 UnionID ，无须用户再次授权。 如果开发者帐号下存在同主体的公众号，并且该用户已经关注了该公众号。 开发者可以直接通过 wx.login + code2Session 获取到该用户 UnionID，无须用#. 户再次授权。 如果开发者拥有多个移动应用、网站应用、和公众帐号（包括小程序），可通过 UnionID 来区分用户的唯一性， 因为只要是同一个微信开放平台帐号下的移动应用、网站应用和公众帐号（包括小程序），用户的 UnionID 是唯一的。 换句话说，同一用户，对同一个微信开放平台下的不同应用，unionid是相同的。 小程序端调用云函数时，如果开发者帐号下存在同主体的公众号或移动应用， 并且该用户已经授权登录过该公众号或移动应用，也可在云函数中通过 #. cloud.getWXContext 获取 UnionID。 小程序端调用云函数时，如果开发者帐号下存在同主体的公众号，并且该用户已经关注了该公众号， 可在云函数中通过 cloud.getWXContext 获取 UnionID。 微信开放平台绑定小程序流程 用户在小程序（暂不支持小游戏）中支付完成后，开发者可以直接通过getPaidUnionId接口获取该用户的 UnionID， 无需用户授权。注意：本接口仅在用户支付#. 完成后的5分钟内有效，请开发者妥善处理。 登录 `微信开放平台 <https://open.weixin.qq.com/>`_ — 管理中心 — 小程序 — 绑定小程序 绑定了开发者帐号的小程序，可以通过以下途径获取 UnionID。 调用接口 wx.getUserInfo，从解密数据中获取 UnionID。注意本接口需要用户授权，请开发者妥善处理用户拒绝授权后的情况。 