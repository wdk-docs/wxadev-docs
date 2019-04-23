wx.qy.getQrCode
=====================


.. function:: wx.qy.getQrCode({[timeout][, success][, fail][, complete]})

  :label: 获取企业成员个人二维码
  :param Number timeout:	超时时间，单位 ms
  :param function success({qrCode}):	接口调用成功的回调函数

    - **qrCode**	(*String*) -	当前企业成员的个人二维码url

  :param function fail:	接口调用失败的回调函数
  :param function complete:	接口调用结束的回调函数（调用成功、失败都会执行）
  :前提:

    1. 必须先调用过wx.qy.login，且session_key未过期，开发者可调用checkSession 检查当前登录态
    2. 要求用户在应用可见范围内，且每次调用都需要用户同意确认

  :示例:

  .. code::

    wx.qy.getQrCode ({
      success: function(res) {
        var qrCode = res.qrCode
      }
    })
