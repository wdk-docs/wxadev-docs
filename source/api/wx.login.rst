:wxapi:`wx.login`
=====================

.. function:: wx.login({[timeout][, success][, fail][, complete]})

   调用接口获取登录凭证（code）。通过凭证进而换取用户登录态信息，包括用户的唯一标识（openid）及本次登录的会话密钥（session_key）等。用户数据的加解密通讯需要依赖会话密钥完成。更多使用方法详见 小程序登录。

   :param number timeout:	超时时间，单位ms	1.9.90
   :param function success({code}): 接口调用成功的回调函数

      - **code** (*string*) - 用户登录凭证（有效期五分钟）。开发者需要在开发者服务器后台调用 auth.code2Session，使用 code 换取 openid 和 session_key 等信息

   :param function fail: 接口调用失败的回调函数
   :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）

   :示例:

     .. code::

       wx.login({
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
