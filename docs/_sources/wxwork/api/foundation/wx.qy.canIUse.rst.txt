wx.qy.canIUse
===================================================


.. function:: wx.qy.canIUse(schema)

  :label: 判断企业微信专有接口、回调、参数等是否在当前版本可用。
  :param string schema: 使用 ${API}.${method}.${param}.${options} 或者 ${component}.${attribute}.${option} 方式来调用

    - *${API}* 代表 API 名字
    - *${method}* 代表调用方式，有效值为return, success, object, callback
    - *${param}* 代表参数或者返回值
    - *${options}* 代表参数的可选值

  :rtype: boolean
  :return: 布尔值
  :注意: :func:`wx.canIUse` 判断的是微信小程序通用接口（即wx.[接口名]）是否在当前版本可用。
  :示例:

    .. code::

      wx.qy.canIUse('login.success.code')
      wx.qy.canIUse('getNFCReaderState')
      wx.qy.canIUse('getAvatar.success.avatar')
