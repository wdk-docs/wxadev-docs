.. _qywx-api:

:wxwork:`接口 <dev-doc/qywx-api>`
==============================================

企业微信专有接口是指企业微信在微信小程序基础库的基础上进行的二次能力扩展，
主要在逻辑层扩展，渲染层与微信小程序基本保持一致。

扩展的接口可以让小程序在企业微信环境运行时获得更多和企业微信相关的能力，
比如微信小程序提供了 :func:`wx.login` 接口用于获取用户在微信环境中的用户openid信息，
企业微信提供了 :func:`wx.qy.login` 接口用于获取用户的userid信息，
这样使得一个小程序在企业微信与微信消息互通的场景中，可以根据运行环境获得两种身份态。

**兼容处理**

小程序在微信环境中运行时，不支持调用企业微信专有接口，需要进行对应的 :ref:`compatibility` 。

.. toctree::
   :maxdepth: 2
   :glob:

   login/index
   foundation/index
   corpmemberinfo/index
   contact/index
   nfc/index
   miniprogram-msg
