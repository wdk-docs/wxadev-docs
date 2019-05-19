:wxapi:`wx.onAppShow`
=============================


.. function:: wx.onAppShow(function callback)

   .. versionadded:: 2.1.2 低版本需做 :ref:`compatibility` 。

   监听小程序切前台事件。该事件与 :func:`App.onShow` 的回调参数一致。

   :param function callback: 小程序切前台事件的回调函数

   :param string path: 小程序切前台的路径
   :param number scene: 小程序切前台的场景值

     - *1020* 公众号 profile 页相关小程序列表	来源公众号
     - *1035* 公众号自定义菜单	来源公众号
     - *1036* App 分享消息卡片	来源App
     - *1037* 小程序打开小程序	来源小程序
     - *1038* 从另一个小程序返回	来源小程序
     - *1043* 公众号模板消息	来源公众号

   :param Object query: 小程序切前台的 query 参数
   :param string shareTicket: shareTicket，详见获取更多转发信息
   :param string referrerInfo: 来源信息。从另一个小程序、公众号或 App 进入小程序时返回。否则返回 {}。(参见后文注意)

     - *appId* - 来源小程序、公众号或 App 的 appId
     - *extraData* Object - 来源小程序传过来的数据，scene=1037或1038时支持

   .. attention::
      部分版本在无referrerInfo的时候会返回 undefined，
      建议使用 options.referrerInfo && options.referrerInfo.appId 进行判断。
