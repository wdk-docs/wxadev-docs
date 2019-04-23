wx.qy.getEmail
===================================================


.. function:: wx.qy.getEmail({[timeout][, success][, fail][, complete]})

  :label: 获取企业成员邮箱地址
  :param number timeout: 超时时间，单位 ms
  :param function success({encryptedData,iv}):	接口调用成功的回调函数

    - **encryptedData**	*(string)* -	包括敏感数据在内的完整用户信息的加密数据，详细见加密数据解密算法, 解密后JSON:

        - **email**	(*string*) -	当前企业成员的邮箱地址
        - **watermark** (*object*) - 数据水印，应用可以依此校验数据的有效性

          - **appid**	(*String*) -	敏感数据归属的小程序appid，开发者可校验此参数与自身appid是否一致，注意此appid不是企业微信的corpid
          - **timestamp**	(*DateInt*) -	敏感数据获取的时间戳, 开发者可以用于数据时效性校验

    - **iv**	*(string)* -	加密算法的初始向量，详细见加密数据解密算法

  :param function fail:	接口调用失败的回调函数
  :param function complete:	接口调用结束的回调函数（调用成功、失败都会执行）
  :调用前提:

    1. 必须先调用过 :func:`wx.qy.login`，且session_key未过期，开发者可调用 :func:`checkSession <wx.qy.checkSession>` 检查当前登录态
    2. 要求用户在应用可见范围内，且每次调用都需要用户同意确认

  :示例代码:

    .. code::

      wx.qy.getEmail ({
        success: function(res) {
          console.log(res.encryptedData)
          console.log(res.iv)
        }
      })
