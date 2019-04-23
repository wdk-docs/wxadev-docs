:wxwork:`wx.qy.selectExternalContact <dev-doc/qywx-api/contact/wxqyselectexternalcontact>`
======================================================================================================

.. function:: wx.qy.selectExternalContact({[filterType][, success][, fail][, complete]})

  :label: 打开通讯录选人功能
  :param number filterType:	``0``, 合法值如下:

    - *0* 表示展示全部外部联系人列表
    - *1* 表示仅展示未曾选择过的外部联系人

  :param function success: 接口调用成功的回调函数

    - **userIds**	(*array*)	返回此次选择的外部联系人 *userId* 列表

  :param function fail: 接口调用失败的回调函数
  :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）

  :调用前提:

    1. 必须先调用过 :func:`wx.qy.login`，且session_key未过期，开发者可调用 :func:`checkSession <wx.qy.checkSession>` 检查当前登录态
    2. 当前成员必须在应用的可见范围
    3. 仅配置了客户联系功能的用户可调用。

  :示例:

    .. code::

      wx.qy.selectExternalContact({
        filterType: 0, // 0表示展示全部外部联系人列表，1表示仅展示未曾选择过的外部联系人。默认值为0；除了0与1，其他值非法。
        success(res) {
          const userIds = res.userIds// 返回此次选择的外部联系人userId列表，数组类型
        }
      })
