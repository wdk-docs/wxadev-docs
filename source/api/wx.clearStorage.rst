:wxapi:`wx.clearStorage`
============================================

.. function:: wx.clearStorage({[success][ ,fail][ ,complete]})

  清理本地数据缓存

  :param function success: 接口调用成功的回调函数
  :param function fail: 接口调用失败的回调函数
  :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）
  :示例:

    .. code::

      wx.clearStorage()
      try {
        wx.clearStorageSync()
      } catch (e) {
        // Do something when catch error
      }
