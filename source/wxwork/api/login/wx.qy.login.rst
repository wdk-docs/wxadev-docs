wx.qy.login
================================================================

.. function:: wx.qy.login({[timeout][, success][, fail][, complete]})

  :label: 获取企业微信派发的临时登录凭证
  :param number timeout:	超时时间，单位 ms
  :param function success:	接口调用成功的回调函数

    - **errMsg**	(*string*) -	调用结果
    - **code**	(*string*) -	用户登录凭证（有效期五分钟）。开发者需要在开发者服务器后台调用 api，使用 code 换取 userid 和 session_key 等信息

  :param function fail:	接口调用失败的回调函数
  :param function complete:	接口调用结束的回调函数（调用成功、失败都会执行）


  :示例代码:

    .. code::

      // app.js

      App({
        onLaunch() {
          wx.qy.login({
            success(res) {
              if (res.code) {
                // 发起网络请求
                wx.request({
                  url: 'https://test.com/onLogin',
                  data: {
                    code: res.code
                  }
                })
              } else {
                console.log('登录失败！' + res.errMsg)
              }
            }
          })
        }
      })
