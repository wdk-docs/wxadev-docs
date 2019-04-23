wx.qy.getAvatar
===================================================

.. function:: wx.qy.getAvatar({[timeout][, success][, fail][, complete]})

  :label: 获取企业成员头像
  :param Number timeout:		否	超时时间，单位 ms
  :param function success({avatar}):	接口调用成功的回调函数

    - **avatar**	(*String*) -	当前企业成员的头像url

  :param function fail:	接口调用失败的回调函数
  :param function complete:	接口调用结束的回调函数（调用成功、失败都会执行）
  :前提:

    1. 必须先调用过 :func:`wx.qy.login`，且session_key未过期，开发者可调用 :func:`checkSession <wx.qy.checkSession>` 检查当前登录态
    2. 要求用户在应用可见范围内，且需要用户同意确认

  :示例代码:

    .. code::

      wx.qy.getAvatar ({
        success: function(res) {
          var avatar = res.avatar
        },
        fail: function(res) {
          console.log(res.fail_reason)
        }
      })
