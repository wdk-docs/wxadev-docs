:wxapi:`wx.openSetting`
===============================

.. function:: wx.openSetting(Object object)

  .. versionadded:: 1.1.0 低版本需做 :ref:`compatibility` 。

  调起客户端小程序设置界面，返回用户设置的操作结果。设置界面只会出现小程序已经向用户请求过的权限。

  .. attention:: 2.3.0 用户发生点击行为后，才可以跳转打开设置页，管理授权信息。详情

  :param function success({authSetting}): 接口调用成功的回调函数

    - **authSetting** (*AuthSetting*) - 用户授权结果

  :param function fail: 接口调用失败的回调函数
  :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）
  :示例:

    .. code::

      wx.openSetting({
        success(res) {
          console.log(res.authSetting)
          // res.authSetting = {
          //   "scope.userInfo": true,
          //   "scope.userLocation": true
          // }
        }
      })
