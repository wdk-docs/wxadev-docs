:wxapi:`wx.pluginLogin`
==============================

.. function:: wx.pluginLogin({[success][,fail][,complete]})

  .. versionadded: 基础库 2.20.1 开始支持
  :label: 调用接口获得插件用户标志凭证（code）。插件可以此凭证换取用于识别用户的标识 openpid。用户不同、宿主小程序不同或插件不同的情况下，该标识均不相同，即当且仅当同一个用户在同一个宿主小程序中使用同一个插件时，openpid 才会相同。
  :support:
    - 以 Promise 风格 调用：不支持
    - 小程序插件：支持，需要小程序基础库版本不低于 2.20.1
    - 微信 Windows 版：支持
    - 微信 Mac 版：支持
  :note: 该接口仅在小程序插件中可调用

  :param function success({code}): 否 接口调用成功的回调函数

    - **code** (*string*) 用于换取 openpid 的凭证（有效期五分钟）。插件开发者可以用此 code 在开发者服务器后台调用 auth.getPluginOpenPId 换取 openpid。

  :param function fail:  否 接口调用失败的回调函数
  :param function complete:  否 接口调用结束的回调函数（调用成功、失败都会执行）


