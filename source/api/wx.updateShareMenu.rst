:wxapi:`wx.updateShareMenu`
============================================

.. function:: wx.updateShareMenu([withShareTicket][, isUpdatableMessage][, activityId][, templateInfo][, success][, fail][, complete])

   .. versionadded:: 1.2.0 低版本需做  :ref:`compatibility`

   更新转发属性

   :param boolean withShareTicket: **false** 是否使用带 shareTicket 的转发详情
   :param boolean isUpdatableMessage: **false** 是否是动态消息，详见动态消息

      .. versionadded:: 2.4.0

   :param string activityId: 动态消息的 ``activityId`` 。通过 :func:`updatableMessage.createActivityId` 接口获取

     .. versionadded:: 2.4.0

   :param object templateInfo: 动态消息的模板信息

      .. versionadded:: 2.4.0

      - **parameterList** (*Array.<Object>*) - 参数列表

        - **name** (*string*) - 参数名
        - **value** (*string*) - 参数值

   :param function success: 接口调用成功的回调函数
   :param function fail: 接口调用失败的回调函数
   :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）

   :示例:

    .. code::

      wx.updateShareMenu({
        withShareTicket: true,
        success() { }
      })
