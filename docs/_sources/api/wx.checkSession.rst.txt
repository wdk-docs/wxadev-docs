:wxapi:`wx.checkSession`
============================================

.. function:: wx.checkSession({[success][, fail][, complete]})

   检查登录态是否过期。

   通过 :func:`wx.login` 接口获得的用户登录态拥有一定的时效性。
   用户越久未使用小程序，用户登录态越有可能失效。
   反之如果用户一直在使用小程序，则用户登录态一直保持有效。具体时效逻辑由微信维护，对开发者透明。
   开发者只需要调用 :func:`wx.checkSession` 接口检测当前用户登录态是否有效。

   登录态过期后开发者可以再调用 :func:`wx.login` 获取新的用户登录态。调用成功说明当前 session_key 未过期，调用失败说明 session_key 已过期。更多使用方法详见 小程序登录。

   :param function success: 接口调用成功的回调函数
   :param function fail: 接口调用失败的回调函数
   :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）
   :示例:
      .. code::

       wx.checkSession({
         success() {
           // session_key 未过期，并且在本生命周期一直有效
         },
         fail() {
           // session_key 已经失效，需要重新执行登录流程
           wx.login() // 重新登录
         }
       })
