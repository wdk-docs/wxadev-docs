wx.qy.checkSession
======================================================

.. function:: wx.qy.checkSession({[timeout][, success][, fail][, complete]})

  :label: 校验用户当前 session_key 是否有效
  :param function success({errMsg,expireIn}):	接口调用成功的回调函数，session_key未过期

    - **errMsg**	(*String*) -	调用结果
    - **expireIn**	(*Number*) -	session过期时间

  :param function fail:	接口调用失败的回调函数，session_key已过期
  :param function complete:	接口调用结束的回调函数（调用成功、失败都会执行）

  :示例代码:

    .. code::

      wx.qy.checkSession({
        success() {
          // session_key 未过期，并且在本生命周期一直有效
        },
        fail() {
          // session_key 已经失效，需要重新执行登录流程
          wx.qy.login() // 重新登录
        }
      })

  :注意事项:

    如果有重新登录，需要调用 jscode2session 接口后，session_key 才会有效
