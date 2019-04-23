:wxwork:`wx.qy.openEnterpriseChat <dev-doc/qywx-api/contact/wxqyopenenterprisechat>`
=========================================================================================

.. function:: wx.qy.openEnterpriseChat({groupName[, userIds][, externalUserIds][, success][, fail][, complete]})

  :label: 打开通讯录选人功能
  :param string groupName: 会话名称。单聊时该参数传入空字符串""即可
  :param string userIds: (userIds和externalUserIds至少填一个)参与会话的企业成员列表，格式为 ``userid1;userid2;...`` ，用分号隔开。
  :param string externalUserIds: (userIds和externalUserIds至少填一个)	参与会话的外部联系人列表，格式为userId1;userId2;…，用分号隔开。
  :param function success:	接口调用成功的回调函数
  :param function fail:	接口调用失败的回调函数
  :param function complete:	接口调用结束的回调函数(调用成功、失败都会执行)

  :调用前提:

    1. 必须先调用过wx.qy.login，且session_key未过期，开发者可调用checkSession 检查当前登录态
    2. 当前成员必须在应用的可见范围
    3. externalUserIds由外部联系人选人接口selectExternalContact获得
    4. 由于目前暂不支持包含微信联系人的群聊，所以externalUserIds中最多只能有一个微信联系人，而且一旦externalUserIds中有微信联系人，就不能再传userIds参数。

  :示例代码:

    .. code::

      wx.qy.openEnterpriseChat({
        // 注意：userIds和externalUserIds至少选填一个，且userIds+openIds总数不能超过2000。
        userIds: 'zhangshan;lisi;wangwu', // 参与会话的企业成员列表，格式为userid1;userid2;...，用分号隔开。
        externalUserIds: 'wmEAlECwAAHrbWYDOK5u3Af13xlYDDNQ;wmEAlECwAAHrbWYDOK5u3Af13xlYDDNT', // 参与会话的外部联系人列表，格式为userId1;userId2;…，用分号隔开。
        groupName: '讨论组', // 必填，会话名称。单聊时该参数传入空字符串""即可。
        success(res) {
          // 回调
        },
        fail(res) {
          // 失败处理
        }
      })