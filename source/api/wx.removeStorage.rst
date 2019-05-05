:wxapi:`wx.removeStorage`
==================================

.. function:: wx.removeStorage({key[, success][ ,fail][ ,complete]})

  从本地缓存中移除指定 key

  :param string key: 本地缓存中指定的 key
  :param function success: 接口调用成功的回调函数
  :param function fail: 接口调用失败的回调函数
  :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）
  :示例:

    .. code::

      wx.removeStorage({
        key: 'key',
        success(res) {
          console.log(res)
        }
      })

    .. code::

      try {
        wx.removeStorageSync('key')
      } catch (e) {
        // Do something when catch error
      }
