:wxwork:`wx.qy.getCurExternalContact <dev-doc/qywx-api/contact/wxqygetcurexternalcontact>`
======================================================================================================

.. function:: wx.qy.getCurExternalContact([success][, fail][, complete])

  :label: 打开通讯录选人功能
  :param function success({userId}): 	接口调用成功的回调函数

    - **userId**	(*string*)	返回此次选择的外部联系人userId

  :param function fail: 	接口调用失败的回调函数
  :param function complete: 	接口调用结束的回调函数（调用成功、失败都会执行）

  :调用前提:

    1. 必须先调用过 :func:`wx.qy.login`，且session_key未过期，开发者可调用 :func:`checkSession <wx.qy.checkSession>` 检查当前登录态
    2. 当前成员必须在应用的可见范围
    3. 需要从外部联系人的profile或聊天附件栏进入小程序才能获取，否则会报错：without context of external contact
    4. 仅 配置了客户联系功能 的用户可调用。

  :示例代码:

    .. code:: js

      wx.qy.getCurExternalContact({
        success(res) {
          const userId = res.userId // 返回当前外部联系人userId
        }
      })
