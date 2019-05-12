:wxapi:`wx.startPullDownRefresh`
============================================

.. function:: wx.startPullDownRefresh([success][, fail][, complete])

  .. version:: 1.5.0 低版本需做兼容处理。

  开始下拉刷新。调用后触发下拉刷新动画，效果与用户手动下拉刷新一致。参加: :envvar:`enablePullDownRefresh`

  :param function success: 接口调用成功的回调函数
  :param function fail: 接口调用失败的回调函数
  :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）

  :示例:

    .. code::

      wx.startPullDownRefresh()

.. todo::

   |today| 研究如何引用环境变量？
