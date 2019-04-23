wx.qy.getMobile
===================================================

  .. function:: wx.qy.getMobile({[timeout][, success][, fail][, complete]})

  :label: 获取企业成员手机号
  :param Number timeout: 超时时间，单位 ms
  :param function success({encryptedData,iv}):	接口调用成功的回调函数

    - **encryptedData**	(*String*) -	包括敏感数据在内的完整用户信息的加密数据，详细见加密数据解密算法
    - **iv**	(*String*) -	加密算法的初始向量，详细见加密数据解密算法

  :param function fail:	接口调用失败的回调函数
  :param function complete:	接口调用结束的回调函数（调用成功、失败都会执行）
  :前提:

    1. 必须先调用过 :func:`wx.qy.login`，且 session_key 未过期，开发者可调用 :func:`checkSession <wx.qy.checkSession>` 检查当前登录态
    2. 要求用户在应用可见范围内，且每次调用都需要用户同意确认
    3. 获取的是当前企业成员在企业通讯录中的手机号

  :示例:

    .. code::

      wx.qy.getMobile ({
        success: function(res) {
          console.log(res.encryptedData)
          console.log(res.iv)
        }
      })
