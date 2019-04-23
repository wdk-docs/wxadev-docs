:wxwork:`wx.qy.openUserProfile <dev-doc/qywx-api/contact/wxqyopenuserprofile>`
======================================================================================================

.. function:: wx.qy.openUserProfile([success][, fail][, complete])

  :label: 打开通讯录选人功能
  :param Number type:	1表示该userid是企业成员，2表示该userid是外部联系人
  :param String userid:	可以是企业成员的id，也可以是外部联系人的id
  :param function success: 	接口调用成功的回调函数
  :param function fail: 	接口调用失败的回调函数
  :param function complete: 	接口调用结束的回调函数（调用成功、失败都会执行）
  :调用前提:

    1. 必须先调用过 :func:`wx.qy.login` ，且 session_key 未过期，开发者可调用 :func:`checkSession <wx.qy.checkSession>` 检查当前登录态
    2. 当前成员必须在应用的可见范围

  :示例代码:

    .. code:: js

      wx.qy.openUserProfile({
        type: 1, // 1表示该userid是企业成员，2表示该userid是外部联系人
        userid: 'wmEAlECwAAHrbWYDOK5u3Af13xlYDDNQ', // 可以是企业成员，也可以是外部联系人
        success(res) {
          // 回调
        }
      })
