:wxapi:`wx.stopPullDownRefresh`
============================================

.. function:: wx.stopPullDownRefresh([success][, fail][, complete])

  .. version:: 1.5.0 低版本需做兼容处理。

  停止当前页面下拉刷新。 参加: :envvar:`enablePullDownRefresh`


  :param function success: 接口调用成功的回调函数
  :param function fail: 接口调用失败的回调函数
  :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）

  :示例:

    .. code::

      Page({
        onPullDownRefresh() {
          wx.stopPullDownRefresh()
        }
      })
